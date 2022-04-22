from django.shortcuts import render
from django.http import HttpResponse
from .models import *

# def Home(request):
#     return HttpResponse('<h1>Hotel Management System</h1> <br> <p> Rong Ram Chan U Trong Nai </p>')
def Home(request):
    allresort=Resort.objects.all()   # SELECT * from product
    context={'allresort':allresort}
    return render(request, 'hotelapp/home.html', context)
    
def Plans(request):
    return render(request, 'hotelapp/plans.html')

def AboutUs(request):
    return render(request, 'hotelapp/aboutus.html')
