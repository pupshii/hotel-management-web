from django.urls import path
from .views import * 

urlpatterns = [
    path('', Home, name='home-page'),
    path('hotels/', Hotels, name='hotels-page'),
    path('promotions/', Promotions, name='promotions-page'),
    path('contact/', Contact, name='contact-page'),
    path('booking/', Booking, name='booking-page'),
    path('news/', News, name='news-page'),
    path('profile/', ProfilePage, name='profile-page'),
    path('testmysql/', TestStaff, name='temporary-test-mysql'),
]
