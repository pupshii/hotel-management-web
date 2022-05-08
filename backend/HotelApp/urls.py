from django.urls import path
from .views import * 

urlpatterns = [
    path('', Home, name='home-page'),
    path('hotels/', Hotels, name='hotels-page'),
    path('promotions/', Promotions, name='promotions-page'),
    path('contact/', ContactUs, name='contact-page'),
    path('about/', AboutUs, name='about-page'),
    path('register/', Register, name='register-page'),
    path('booking/', Booking, name='booking-page'),
    path('news/', News, name='news-page'),
    path('profile/', ProfilePage, name='profile-page'),
    path('add-hotel/', AddHotel, name='add-hotel'),
    path('add-staff/', AddStaff, name='add-staff'),
    path('add-news/', AddNews, name='add-news'),
    path('add-promotion/', AddPromotion, name='add-promotion'),
    #path('testmysql/', TestStaff, name='temporary-test-mysql'),
]
