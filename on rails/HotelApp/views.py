from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import *
from django.db import connection
# ระบบส่งไลน์
from songline import Sendline
# ระบบส่ง email เวลาเอาขึ้น server ตปท แล้ว gmail มันจะ block 
# from .emailsystem import sendthai
# Image
from django.core.files.storage import FileSystemStorage
# Paginator
from django.core.paginator import Paginator

from django.contrib.auth import authenticate, login
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
def Login(request):
    context={}
    if request.method=='POST':
        data=request.POST.copy()
        username=data.get('username')
        password=data.get('password')
        try:
            print('HERE 1\n')
            user=authenticate(username=username, password=password)
            login(request, user)
            print('HERE 2\n')
            return redirect('home-page')
        except:
            context['danger']='Username หรือ Password ไม่ถูกต้อง กรุณาติดต่อแอดมิน!'
            print('HERE 3\n')
    return render(request, 'frontend/login.html', context)

def Home(request):
    # cursor=connection.cursor()   # ทดสอบรัน complex transaction 3
    # query="SELECT h.Hotel_Id, AVG(t.Rating_Score) as Rating_Avg FROM transaction t, allbook a, room r, hotel h WHERE h.Hotel_Id LIKE r.Hotel_Id AND r.Room_Id LIKE a.Room_Id AND a.Transaction_Id LIKE t.Transaction_Id GROUP BY h.Hotel_Id;"
    # cursor.execute(query)
    # #row=cursor.fetchone()  
    # row=cursor.fetchall()
    # checkhotel=[]   # use to check whether we have this hotel rating or not (HTML)
    # for hotel in row:
    #     checkhotel.append(hotel[0])

    # allhotel=Hotel.objects.all()   # SELECT * from Hotel
    # context={'HotelHomePage':allhotel, 'CT3':row, 'checkhotel':checkhotel}
    # return render(request, 'frontend/home.html', context)
    return render(request, 'frontend/home.html')

def Hotels(request):
    allhotel=Hotel.objects.all()   # SELECT * from Hotel
    hotel_per_page=3
    paginator=Paginator(allhotel, hotel_per_page)
    page=request.GET.get('page')   # localhost:800/?page=2
    allhotel=paginator.get_page(page)
    print('count:', len(allhotel))
    context={'AllHotel':allhotel}
    # แยกแถวละ 3
    allrow=[]
    row=[]
    for i, p in enumerate(allhotel):
        if i%3 == 0:
            if i!= 0:
                allrow.append(row)
            row=[]
            row.append(p)
        else:
            row.append(p)
    if len(row) != 0:
        allrow.append(row)
    context['AllRow']=allrow
    print("CHECK:", allrow)
    return render(request, 'frontend/hotels.html', context)

def Promotions(request):
    allpromotion=Promotion.objects.all()
    for i in allpromotion:
        i.Promotion_Discount*=100  # convert when displaying %

    promotion_per_page=3
    paginator=Paginator(allpromotion, promotion_per_page)
    page=request.GET.get('page')
    allpromotion=paginator.get_page(page)
    context={'AllPromotion':allpromotion}
    allrow=[]
    row=[]
    for i, p in enumerate(allpromotion):
        if i%3 == 0:
            if i!= 0:
                allrow.append(row)
            row=[]
            row.append(p)
        else:
            row.append(p)
    if len(row) != 0:
        allrow.append(row)
    context['AllRow']=allrow
    return render(request, 'frontend/promotions.html', context)

def AboutUs(request):
    return render(request, 'frontend/about.html')
    
def ContactUs(request):
    context={}
    if request.method=='POST':
        data=request.POST.copy()
        title=data.get('title')
        email=data.get('email')
        detail=data.get('detail')
        print(title)
        print(email)
        print(detail)
        print('----------------\n')
        if title=='' or email=='':
            context['danger']='กรุณากรอกแบบฟอร์มให้ครบถ้วน!'
            return render(request, 'frontend/contact.html', context)
        # record info
        # newrecord=ContactList()
        # newrecord.title=title
        # newrecord.email=email
        # newrecord.detail=detail
        # newrecord.save()
        # ContactList(title=title, email=email, detail=detail).save()
        context['message']='ขอบคุณสำหรับข้อความ แอดมินจะติดต่อคุณกลับภายใน 24 ชั่วโมง'

        # ส่งไลน์ from songline import Sendline (https://pypi.org/project/songline/)
        token='o6Tfmj8FPGp6egjxwVjnOrMpLhfoZRb9520DBiWOxuV'  # เอามาจาก Line notify
        linenoti=Sendline(token)
        linenoti.sendtext('\nหัวข้อ: {}\nอีเมลล์: {}\nรายละเอียด: {}'.format(title, email, detail))
        # ส่งอีเมลล์ from .emailsystem import sendthai
        # text='สวัสดีคุณลูกค้า\n\nทางเราได้รับปัญหาที่ท่านสอบถามเรียบร้อยแล้ว แอดมินจะรีบทำการติดต่อกลับโดยเร็วที่สุด\n\n--แอดมิน--\n'
        # sendthai(email, 'Hotel Poonveh: สอบถามปัญหา', text)
    return render(request, 'frontend/contact.html', context)

# from django.contrib.auth.models import User
import uuid
def Register(request):
    context={}
    if request.method=='POST':
        data=request.POST.copy()
        nic=data.get('nic')
        fname=data.get('fname')
        lname=data.get('lname')
        username=data.get('username')
        email=data.get('email')
        tel=data.get('tel')
        address=data.get('address')
        password1=data.get('password1')
        password2=data.get('password2')
        context['GetFirstname']=fname  # ช่วยกรอกให้ใหม่
        context['GetLastname']=lname
        context['GetNIC']=nic
        context['GetTel']=tel
        context['GetAddress']=address
        print("ADDR= ", address)
        # ใช้ try except ซ้อนกันแล้วมัน pass ไปเลย ติด if ไว้ดีกว่า, เผื่อ fill ช่องให้ผู้ใช้ด้วย
        if User.objects.filter(username=username):  
            context['danger_message1']='Username "{}" มีในระบบแล้ว กรุณาใช้ username อื่น'.format(username)
        else:
            context['GetUsername']=username
        if User.objects.filter(email=email):
            context['danger_message2']='Email "{}" มีในระบบแล้ว กรุณาใช้ email อื่น'.format(email)
        else:
            context['GetEmail']=email
        if password1 != password2:  
            context['danger_message3']='password ของคุณไม่ตรงกัน'  
        if 'danger_message1' in context or 'danger_message2' in context or 'danger_message3' in context:
            return render(request, 'frontend/register.html', context)   
        else:
            newuser=User()
            newuser.first_name=fname
            newuser.last_name=lname
            newuser.username=username
            newuser.email=email
            newuser.set_password(password1)
            newuser.save()
            print('F1\n')

            u=uuid.uuid1()  # random UUID https://pynative.com/python-uuid-module-to-generate-universally-unique-identifiers/
            token=str(u)

            print('F2\n')
            newmember=Member()
            newmember.user=User.objects.get(username=username)
            newmember.Member_NIC=nic
            newmember.Member_Tel=tel
            newmember.Member_Address=address
            # ใส่รูปภาพ
            if 'picture' in request.FILES:
                print('F3\n')
                file_img=request.FILES['picture']
                file_img_name=file_img.name.replace(' ', '-')
                # from django.core.files.storage import FileSystemStorage
                fs=FileSystemStorage(location='media/profile')  # ระบุบ folder ที่เซฟไป
                filename=fs.save(file_img_name, file_img)  # เซฟชื่อไฟล์ กับ ตัวไฟล์
                upload_file_url=fs.url(filename)  # ให้ไปเอา URL มา จะได้บอก server ถูกว่ารูปนี้อยู่ไหน (ระบุ MEDIA_ROOT แล้ว)
                print('Pic URL:', upload_file_url)  # Pic URL:  /media/play-5-wow.jpg
                newmember.Member_Pic='/profile'+upload_file_url[6:]  # ตัดคำว่า '/media' ด้านหน้าออกไป
            else:
                print('numa numa yeah! numa numa yeah yeah yeah!')

            print('F4\n')
            newmember.save()
            #text='สวัสดีคุณ '+fname+' '+lname+'\n\nเราขอขอบคุณที่ท่านได้ทำการสมัครสมาชิคของเว็บไซต์เรา\nกรุณากดลิงค์นี้เพื่อทำการ ยืนยันการเป็นสมาชิคของท่าน\n\nLink: http://localhost:8000/verify-email/'+token+'\n\n--ทีมงาน PoonVeh--'
            #sendthai(email, 'PoonVeh: ยืนยันการสมัครสมาชิค', text)

        try:
            user=authenticate(username=username, password=password1)
            login(request, user)
            return redirect('profile-page')
        except:
            context['danger_message4']='คุณกรอก Username หรือ Password ไม่ถูกต้อง กรุณาติดต่อแอดมิน!'
    return render(request, 'frontend/register.html', context)

@login_required
def ProfilePage(request):
    context={}
    profileuser=User.objects.get(username=request.user.username)
    context['profileInfo']=profileuser
    if request.method == 'POST':
        data=request.POST.copy()
        fname=data.get('fname')
        lname=data.get('lname')
        nic=data.get('nic')
        tel=data.get('tel')
        address=data.get('address')
        profileuser.first_name=fname
        profileuser.last_name=lname
        profileuser.save()
        editmember=Member.objects.get(id=profileuser.id)
        editmember.Member_NIC=nic
        editmember.Member_Tel=tel
        editmember.Member_Address=address
        editmember.save()
        context['update']='Your profile page has been updated!'
    return render(request, 'frontend/profile.html', context)

@login_required
def Booking(request):
    return render(request, 'frontend/booking.html')

@login_required
def News(request):
    return render(request, 'frontend/news.html')

@login_required
def SearchMember(request):
    allow_user=['MANAGER', 'ADMIN']
    if not request.user.is_staff or request.user.member.staff.Staff_Position not in allow_user:
        return redirect('home-page')
    context={}
    alluser=User.objects.all()
    context['result_user']=alluser
    if request.method == 'POST':
        data=request.POST.copy()
        search_index=data.get('search-in-db')
        search_index=int(search_index)
        print('search Id=', search_index)
        if search_index == 1:
            m_id=data.get('m_id')  # ต้องเช็คว่าเป็น int ไหม เด่วบึ้ม
            if not m_id:  # empty string are false
                context['search_all']='Search all instead!'
                return render(request, 'frontend/searchmember.html', context)
            m_id=m_id[1:]
            if not m_id.isnumeric():
                context['search_boom']='Please input correct format in order to search member!'
                return render(request, 'frontend/searchmember.html', context)
            m_id=int(m_id)
            alluser=User.objects.filter(id=m_id)
        if search_index == 2:
            user=data.get('user')
            if not user:  # empty string are falsy
                context['search_all']='Search all instead!'
                return render(request, 'frontend/searchmember.html', context)
            alluser=User.objects.filter(username__contains=user)
        if search_index == 3:
            fname=data.get('fname')
            if not fname:
                context['search_all']='Search all instead!'
                return render(request, 'frontend/searchmember.html', context)
            alluser=User.objects.filter(first_name__contains=fname)
        if search_index == 4:
            lname=data.get('lname')
            if not lname:
                context['search_all']='Search all instead!'
                return render(request, 'frontend/searchmember.html', context)
            alluser=User.objects.filter(last_name__contains=lname)
        if search_index == 5:
            email=data.get('email')
            if not email:
                context['search_all']='Search all instead!'
                return render(request, 'frontend/searchmember.html', context)
            alluser=User.objects.filter(email=email)
        context['result_user']=alluser
        context['finish_search']='You can see your search result below!'
    return render(request, 'frontend/searchmember.html', context)

@login_required
def EditMember(request, user_id):
    edituser=User.objects.get(id=user_id)
    context={}
    context['profileInfo']=edituser
    hotellist=Hotel.objects.all()  # เอาไว้เผื่อ add staff
    context['hotellist']=hotellist
    if request.method == 'POST':
        data=request.POST.copy()
        if 'save' in data:
            fname=data.get('fname')
            lname=data.get('lname')
            nic=data.get('nic')
            tel=data.get('tel')
            address=data.get('address')
            edituser.first_name=fname
            edituser.last_name=lname
            edituser.save()
            editmember=Member.objects.get(id=edituser.id)
            editmember.Member_NIC=nic
            editmember.Member_Tel=tel
            editmember.Member_Address=address
            editmember.save()
            context['update']='Updated M'+str(edituser.id)+' profile information!'
        if 'add' in data:
            hotel=data.get('hotel')
            hotel=hotel[1]  # เอาเฉพาะเลข id
            pos=data.get('pos')
            workdate=data.get('date')
            level=data.get('level')
            level=level[6:]  # ตัด 'Level '

            newstaff=Staff()
            newstaff.member=Member.objects.get(id=edituser.id)
            newstaff.Hotel_Id=Hotel.objects.get(id=hotel)
            newstaff.Staff_Position=pos
            newstaff.Staff_Start=workdate
            newstaff.Staff_Level=level
            newstaff.save()
            edituser.is_staff=True
            edituser.save()
            context['adding']='Adding M'+str(edituser.id)+' to be staff!'
        if 'remove' in data:   # 100% be staff
            Staff.objects.get(member=edituser.id).delete()
            edituser.is_staff=False
            edituser.save()
            context['revoke']='Revoke the staff role from M'+str(edituser.id)+' account!'
    return render(request, 'frontend/editmember.html', context)

@login_required
def AddHotel(request):
    allow_user=['MANAGER', 'ADMIN']
    if not request.user.is_staff or request.user.member.staff.Staff_Position not in allow_user:
        return redirect('home-page')

    context={}
    if request.method == 'POST':
        data=request.POST.copy()
        hotel_name=data.get('name')
        hotel_address=data.get('address')
        hotel_detail=data.get('detail')

        newhotel=Hotel()
        newhotel.Hotel_Name=hotel_name
        newhotel.Hotel_Address=hotel_address
        newhotel.Hotel_Detail=hotel_detail

        if 'picture' in request.FILES:
            file_img=request.FILES['picture']
            file_img_name=file_img.name.replace(' ', '-')
            # from django.core.files.storage import FileSystemStorage
            fs=FileSystemStorage(location='media/hotel')  # ระบุบ folder ที่เซฟไป
            filename=fs.save(file_img_name, file_img)  # เซฟชื่อไฟล์ กับ ตัวไฟล์
            upload_file_url=fs.url(filename)  # ให้ไปเอา URL มา จะได้บอก server ถูกว่ารูปนี้อยู่ไหน (ระบุ MEDIA_ROOT แล้ว)
            print('Pic URL:', upload_file_url)  # Pic URL:  /media/play-5-wow.jpg
            newhotel.Hotel_Pic='/hotel'+upload_file_url[6:]  # ตัดคำว่า '/media' ด้านหน้าออกไป

        newhotel.save()
        context['addnew']='The system has added the hotel to the database.'
    return render(request, 'frontend/addhotel.html', context)

def HotelDetail(request, hotel_id):
    hotel=Hotel.objects.get(id=hotel_id)
    context={}
    context['Hotel']=hotel
    if request.method == 'POST':
        data=request.POST.copy()
        if 'save' in data:
            print('save data')
            name=data.get('name')
            address=data.get('address')
            detail=data.get('detail')
            hotel.Hotel_Name=name
            hotel.Hotel_Address=address
            hotel.Hotel_Detail=detail
            if 'picture' in request.FILES:
                file_img=request.FILES['picture']
                file_img_name=file_img.name.replace(' ', '-')
                fs=FileSystemStorage(location='media/hotel')
                filename=fs.save(file_img_name, file_img)  # เซฟชื่อไฟล์ กับ ตัวไฟล์
                upload_file_url=fs.url(filename)
                print('Pic URL:', upload_file_url)
                hotel.Hotel_Pic='/hotel'+upload_file_url[6:]  # ตัดคำว่า '/media' ด้านหน้าออกไป
            hotel.save()
            context['Hotel']=hotel  # เซฟแล้วให้มันส่งข้อมูลใหม่ไปโชว์ใน field แทน

        elif 'delete' in data:
            print('delete data')
            hotel.delete()
            return redirect('hotels-page')
    return render(request, 'frontend/hoteldetail.html', context)

@login_required
def AddPromotion(request):
    allow_user=['MANAGER', 'ADMIN']
    if not request.user.is_staff or request.user.member.staff.Staff_Position not in allow_user:
        return redirect('home-page')

    context={}
    if request.method == 'POST':
        data=request.POST.copy()
        name=data.get('name')
        detail=data.get('detail')
        discount=data.get('percent')
        start=data.get('start')
        end=data.get('end')
        print(int(discount[:-1])/100)
        print(start)
        print(end)

        newpromo=Promotion()
        newpromo.Promotion_Name=name
        newpromo.Promotion_Detail=detail
        newpromo.Promotion_Discount=int(discount[:-1])/100   # ด้านหลังสุดเป็น %
        newpromo.Promotion_Start=start
        newpromo.Promotion_End=end

        if 'picture' in request.FILES:
            file_img=request.FILES['picture']
            file_img_name=file_img.name.replace(' ', '-')
            # from django.core.files.storage import FileSystemStorage
            fs=FileSystemStorage(location='media/promotion')  # ระบุบ folder ที่เซฟไป
            filename=fs.save(file_img_name, file_img)  # เซฟชื่อไฟล์ กับ ตัวไฟล์
            upload_file_url=fs.url(filename)  # ให้ไปเอา URL มา จะได้บอก server ถูกว่ารูปนี้อยู่ไหน (ระบุ MEDIA_ROOT แล้ว)
            print('Pic URL:', upload_file_url)  # Pic URL:  /media/play-5-wow.jpg
            newpromo.Promotion_Pic='/promotion'+upload_file_url[6:]  # ตัดคำว่า '/media' ด้านหน้าออกไป

        newpromo.save()
        context['addnew']='The system has added the promotion to the database.'
    return render(request, 'frontend/addpromotion.html', context)

def PromotionDetail(request, promo_id):
    promotion=Promotion.objects.get(id=promo_id)
    context={}
    context['Promotion']=promotion
    context['StartFormat']=promotion.Promotion_Start
    context['EndFormat']=promotion.Promotion_End
    print(promotion.Promotion_Name)
    print(context['StartFormat'])
    print(context['EndFormat'])
    if request.method == 'POST':
        data=request.POST.copy()
        if 'save' in data:
            print('save data')
            name=data.get('name')
            detail=data.get('detail')
            discount=data.get('percent')
            start=data.get('start')
            end=data.get('end')
            promotion.Promotion_Name=name
            promotion.Promotion_Detail=detail
            print(int(discount[:-1]))
            promotion.Promotion_Discount=int(discount[:-1])/100
            promotion.Promotion_Start=start
            promotion.Promotion_End=end
            if 'picture' in request.FILES:
                file_img=request.FILES['picture']
                file_img_name=file_img.name.replace(' ', '-')
                fs=FileSystemStorage(location='media/promotion')
                filename=fs.save(file_img_name, file_img)  # เซฟชื่อไฟล์ กับ ตัวไฟล์
                upload_file_url=fs.url(filename)
                print('Pic URL:', upload_file_url)
                promotion.Promotion_Pic='/promotion'+upload_file_url[6:]  # ตัดคำว่า '/media' ด้านหน้าออกไป
            promotion.save()
            context['Promotion']=promotion  # เซฟแล้วให้มันส่งข้อมูลใหม่ไปโชว์ใน field แทน

        elif 'delete' in data:
            print('delete data')
            promotion.delete()
            return redirect('promotions-page')

    return render(request, 'frontend/promotiondetail.html', context)

@login_required
def AddNews(request):
    allow_user=['MANAGER', 'ADMIN']
    if not request.user.is_staff or request.user.member.staff.Staff_Position not in allow_user:
        return redirect('home-page')
    return render(request, 'frontend/addnews.html')

# def TestStaff(request):
#     allbooks=AllBook.objects.all()
#     allstuff=StaffManager.objects.all()
#     allnews=News.objects.all()
#     testcontext={'StaffManagerTest':allstuff, 'NewsTest':allnews, 'AllBookTest':allbooks,}
#     return render(request, 'hotelapp/testsql.html', testcontext)