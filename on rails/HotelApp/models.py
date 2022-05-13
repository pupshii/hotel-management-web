from django.db import models, connections
from django.contrib.auth.models import User
import datetime

class Hotel(models.Model):
    Hotel_Name=models.CharField(max_length=50)
    Hotel_Address=models.TextField()
    Hotel_Detail=models.TextField()
    Hotel_Pic=models.ImageField(upload_to='hotel', default='hotel/default-location.png')
    def __str__(self):
        return "H"+str(self.id)
    class Meta:
        db_table='hotel'

# from django.contrib.auth.models import User
class Member(models.Model):
    # link to User
    user=models.OneToOneField(User, on_delete=models.CASCADE, null=True, blank=True)
    Member_NIC=models.CharField(max_length=25, null=True, blank=True)
    Member_Tel=models.CharField(max_length=25, null=True, blank=True)
    Member_Point=models.IntegerField(default=0)
    Member_Address=models.TextField(null=True, blank=True)
    Member_Pic=models.ImageField(upload_to='profile', default='profile/default-user.jpg')
    def __str__(self):
        return "M"+str(self.id)
    class Meta:
        db_table='member'

class News(models.Model):
    News_Name=models.CharField(max_length=50)
    News_Detail=models.TextField()
    News_Pic=models.ImageField(upload_to='news')
    def __str__(self):
        return "N"+str(self.id)
    class Meta:
        db_table='news'

class Promotion(models.Model):
    Promotion_Name=models.CharField(max_length=50)
    Promotion_Detail=models.TextField()
    Promotion_Discount=models.FloatField()
    Promotion_Start=models.DateTimeField()
    Promotion_End=models.DateTimeField()
    Promotion_Pic=models.ImageField(upload_to='promotion', default='promotion/default-promotion.jpg')
    def __str__(self):
        return "PRO"+str(self.id)
    class Meta:
        db_table='promotion'

class Payment(models.Model):
    promotion=models.ForeignKey(Promotion, on_delete=models.CASCADE, null=True, blank=True)
    Payment_Date=models.DateTimeField(default=datetime.datetime.now)
    Payment_Allprice=models.IntegerField()
    Payment_Vat10=models.IntegerField()
    Payment_Banking=models.CharField(max_length=20)
    Payment_Slip=models.ImageField(upload_to='slip')
    Payment_Status=models.BooleanField(default=False)
    Payment_Confirm=models.DateTimeField(null=True, blank=True)
    def __str__(self):
        return "PAY"+str(self.id)
    class Meta:
        db_table='payment'

class RoomType(models.Model):
    Type_Name=models.CharField(max_length=50)
    Type_Pernight=models.IntegerField()
    Type_Capacity=models.PositiveSmallIntegerField(default=1)
    Type_Detail=models.TextField()
    Type_Pic=models.ImageField(upload_to='roomdemo')
    def __str__(self):
        return "TY"+str(self.id)
    class Meta:
        db_table='roomtype'

class Room(models.Model):
    hotel=models.ForeignKey(Hotel, on_delete=models.CASCADE, null=True, blank=True)
    roomtype=models.ForeignKey(RoomType, on_delete=models.CASCADE, null=True, blank=True)
    Room_Number=models.CharField(max_length=20)
    Room_Status=models.BooleanField(default=1)
    def __str__(self):
        return "RO"+str(self.id)
    class Meta:
        db_table='room'

class Staff(models.Model):
    member=models.OneToOneField(Member, on_delete=models.CASCADE, null=True, blank=True)
    hotel=models.ForeignKey(Hotel, on_delete=models.CASCADE, null=True, blank=True)
    POONVEH_ROLES=[('ADMIN', 'ADMIN'), ('MANAGER', 'MANAGER'), ('STAFF', 'STAFF')]
    Staff_Position=models.CharField(max_length=10, choices=POONVEH_ROLES, default='STAFF')
    Staff_Start=models.DateField(default=datetime.date.today)
    Staff_Level=models.PositiveSmallIntegerField(default=1)
    Staff_Status=models.BooleanField(default=1)
    def __str__(self):
        return "S"+str(self.id)
    class Meta:
        db_table='staff'

class Transaction(models.Model):
    member=models.ForeignKey(Member, on_delete=models.CASCADE, null=True, blank=True)
    payment=models.ForeignKey(Payment, on_delete=models.CASCADE, null=True, blank=True)
    room=models.ForeignKey(Room, on_delete=models.CASCADE, null=True, blank=True)
    # Transaction_Checkin=models.DateTimeField(default=datetime.datetime.now)
    # Transaction_Checkout=models.DateTimeField(default=datetime.datetime.now)
    Transaction_Detail=models.TextField(default="Reserved")
    Transaction_Night=models.IntegerField(default=1)
    Transaction_Price=models.IntegerField(default=0)
    Transaction_Rating=models.PositiveSmallIntegerField(null=True, blank=True)
    Transaction_Comment=models.TextField(null=True, blank=True)
    def __str__(self):
        return "T"+str(self.id)
    class Meta:
        db_table='transaction'

class GetNews(models.Model):
    member=models.ForeignKey(Member, on_delete=models.CASCADE, null=True, blank=True)
    news=models.ForeignKey(News, on_delete=models.CASCADE, null=True, blank=True)
    def __str__(self):
        return "GN"+str(self.id)
    class Meta:
        db_table='getnews'
