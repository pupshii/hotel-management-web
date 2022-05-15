from django.urls import path
from .views import * 

urlpatterns = [
    path('', Home, name='home-page'),
    path('hotels/', Hotels, name='hotels-page'),
    path('promotions/', Promotions, name='promotions-page'),
    path('contact/', ContactUs, name='contact-page'),
    path('about/', AboutUs, name='about-page'),
    path('register/', Register, name='register-page'),
    path('profile/', ProfilePage, name='profile-page'),
    path('search-member/', SearchMember, name='search-member'),
    path('edit-member/M<int:user_id>/', EditMember, name='edit-member'),
    path('add-hotel/', AddHotel, name='add-hotel'),
    path('hotel-detail/H<int:hotel_id>/', HotelDetail, name='hotel-detail'),
    path('add-promotion/', AddPromotion, name='add-promotion'),
    path('promotion-detail/PRO<int:promo_id>/', PromotionDetail, name='promotion-detail'),
    path('add-news/', AddNews, name='add-news'),
    path('send-news/', SendNews, name='send-news'),
    path('inbox/', NewsInbox, name='news-inbox'),
    path('allbook/', AllBookMember, name='show-booking'),
    path('bookslist/', BooksList, name='books-list'),
    path('reviews/', ReviewPage, name='reviews-page'),
    path('add-room/', AddRoom, name='add-room'),
    path('add-roomtype/', AddRoomType, name='add-roomtype'),
]
