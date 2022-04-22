from django.urls import path
from .views import *   # เอามาให้หมดขกเพิ่ม

urlpatterns = [
    path('', Home, name='home-page'),
    path('plans/', Plans, name='plans-page'),
    path('about/', AboutUs, name='about-page'),
]