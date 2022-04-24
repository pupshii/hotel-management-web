from django.shortcuts import render
from django.http import HttpResponse
from .models import *
from django.db import connection

def Home(request):
    cursor=connection.cursor()   # ทดสอบรัน complex transaction 3
    #cursor.execute("SELECT h.Hotel_Id, h.Hotel_Name, AVG(t.Rating_Score) as Rating_Avg FROM `transaction` t, `allbook` a, `room` r, `hotel` h WHERE h.Hotel_Id LIKE 'H01' AND h.Hotel_Id LIKE r.Hotel_Id AND r.Room_Id LIKE a.Room_Id AND a.Transaction_Id LIKE t.Transaction_Id;")
    getfromuser="'H01'"  # กะจะให้ใส่อินพุตมา
    query="SELECT h.Hotel_Id, h.Hotel_Name, AVG(t.Rating_Score) as Rating_Avg FROM `transaction` t, `allbook` a, `room` r, `hotel` h WHERE h.Hotel_Id LIKE "+getfromuser+" AND h.Hotel_Id LIKE r.Hotel_Id AND r.Room_Id LIKE a.Room_Id AND a.Transaction_Id LIKE t.Transaction_Id;"
    cursor.execute(query)
    #row=cursor.fetchone()  
    row=cursor.fetchall()  

    allhotel=Hotel.objects.all()   # SELECT * from product
    context={'HotelHomePage':allhotel, 'CT3':row}
    return render(request, 'hotelapp/home.html', context)
    #return render(request, 'hotelapp/home.html')
    
def Plans(request):
    return render(request, 'hotelapp/plans.html')

def AboutUs(request):
    return render(request, 'hotelapp/about.html')

def TestStaff(request):
    allstuff=StaffManager.objects.all()
    allnews=News.objects.all()
    testcontext={'StaffManagerTest':allstuff, 'NewsTest':allnews}
    return render(request, 'hotelapp/testsql.html', testcontext)
