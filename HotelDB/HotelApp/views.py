from django.shortcuts import render
from django.http import HttpResponse
from .models import *

def Home(request):
    allhotel=Hotel.objects.all()   # SELECT * from product
    context={'Hotel':allhotel}
    #return render(request, 'HotelApp/home.html')
    return render(request, 'HotelApp/home.html', context)
    
def Plans(request):
    return render(request, 'HotelApp/plans.html')

def AboutUs(request):
    return render(request, 'HotelApp/about.html')

def TestStaff(request):
    allstuff=StaffManager.objects.all()
    allnews=News.objects.all()
    context1={'StaffManagerTest':allstuff, 'NewsTest':allnews}
    return render(request, 'HotelApp/testsql.html', context1)

