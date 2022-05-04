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
    cursor=connection.cursor()   # ทดสอบรัน complex transaction 3
    query="SELECT h.Hotel_Id, h.Hotel_Name, AVG(t.Rating_Score) as Rating_Avg FROM transaction t, allbook a, room r, hotel h WHERE h.Hotel_Id LIKE r.Hotel_Id AND r.Room_Id LIKE a.Room_Id AND a.Transaction_Id LIKE t.Transaction_Id GROUP BY h.Hotel_Id;"
    cursor.execute(query)
    #row=cursor.fetchone()  
    row=cursor.fetchall()  

    allhotel=Hotel.objects.all()   # SELECT * from product
    context={'HotelHomePage':allhotel, 'CT3':row}
    return render(request, 'frontend/home.html', context)


def Hotels(request):
    return render(request, 'frontend/hotels.html')

def Promotions(request):
    return render(request, 'frontend/promotions.html')
    
def Contact(request):
    return render(request, 'frontend/contact.html')

@login_required
def Booking(request):
    return render(request, 'frontend/booking.html')

@login_required
def News(request):
    return render(request, 'frontend/news.html')

@login_required
def ProfilePage(request):
    context={}
    profileuser=User.objects.get(username=request.user.username)
    context['profileInfo']=profileuser
    if request.method == 'POST':
        context['notyet']='To use this feature, we need to complete the signup page in order to continue using member subscription information from DBMS (Devil Based Management Shrine).'
    return render(request, 'frontend/profile.html', context)

def TestStaff(request):
    allbooks=AllBook.objects.all()
    allstuff=StaffManager.objects.all()
    allnews=News.objects.all()
    testcontext={'StaffManagerTest':allstuff, 'NewsTest':allnews, 'AllBookTest':allbooks,}
    return render(request, 'hotelapp/testsql.html', testcontext)
