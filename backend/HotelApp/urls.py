from django.urls import path
from .views import * 

urlpatterns = [
    path('', Home, name='home-page'),
    path('plans/', Plans, name='plans-page'),
    path('about/', AboutUs, name='about-page'),
    path('testmysql/', TestStaff, name='temporary-test-mysql'),
]
