from django.db import models, connections
from django.contrib.auth.models import User

class AllBook(models.Model):
    Room_Id=models.IntegerField()
    Transaction_Id=models.CharField(max_length=12)
    Book_Night=models.IntegerField()
    Book_Price=models.IntegerField()
    def __str__(self):
        return "B"+str(self.id)
    class Meta:
        db_table='allbook'

class GetNews(models.Model):
    Member_Id=models.IntegerField()
    News_Id=models.IntegerField()
    def __str__(self):
        return "GN"+str(self.id)
    class Meta:
        db_table='getnews'

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
    # Member_fName=models.CharField(max_length=100)
    # Member_lName=models.CharField(max_length=100)
    # Member_Email=models.CharField(max_length=100)
    # Member_Username=models.CharField(max_length=100)
    # Member_Password=models.CharField(max_length=100)
    # null blank ไป ขก เขียนตอน create user
    Member_NIC=models.CharField(max_length=25, null=True, blank=True)
    Member_Tel=models.CharField(max_length=25, null=True, blank=True)
    Member_Point=models.IntegerField(default=0)
    # Staff_id=models.IntegerField(null=True, blank=True)
    Member_Address=models.TextField(null=True, blank=True)
    Member_Pic=models.ImageField(upload_to='profile', default='profile/default-user.jpg')
    Member_isStaff=models.BooleanField(default=False)
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

class Payment(models.Model):
    Promotion_Id=models.IntegerField()
    Payment_Date=models.DateTimeField()
    Payment_Allprice=models.IntegerField()
    Payment_Vat10=models.IntegerField()
    Payment_Banking=models.CharField(max_length=20)
    Payment_Slip=models.ImageField(upload_to='slip')
    def __str__(self):
        return "PAY"+str(self.id)
    class Meta:
        db_table='payment'

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

class Room(models.Model):
    Hotel_Id=models.IntegerField()
    Type_Id=models.IntegerField()
    Room_Number=models.CharField(max_length=20)
    Room_Status=models.BooleanField(default=1)
    def __str__(self):
        return "RO"+str(self.id)
    class Meta:
        db_table='room'

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

import datetime
class Staff(models.Model):
    # Member_Id=models.IntegerField()
    member=models.OneToOneField(Member, on_delete=models.CASCADE, null=True, blank=True)
    Hotel_Id=models.IntegerField(null=True, blank=True)
    Staff_Position=models.CharField(max_length=50)
    Staff_Start=models.DateField(default=datetime.date.today)
    # Staff_End=models.DateField(null=True, blank=True)
    Staff_Level=models.PositiveSmallIntegerField(default=1)
    Staff_Status=models.BooleanField(default=1)
    def __str__(self):
        return "S"+str(self.id)
    class Meta:
        db_table='staff'

class Transaction(models.Model):
    # Member_Id=models.IntegerField()
    member=models.ForeignKey(Member, on_delete=models.CASCADE, null=True, blank=True)
    Payment_Id=models.IntegerField()
    Transaction_Checkin=models.DateTimeField()
    Transaction_Checkout=models.DateTimeField(null=True, blank=True)
    Transaction_Date=models.DateTimeField()
    Transaction_Detail=models.TextField(default="Reserved")
    Transaction_Rating=models.PositiveSmallIntegerField(null=True, blank=True)
    Transaction_Comment=models.TextField(null=True, blank=True)
    def __str__(self):
        return "T"+str(self.id)
    class Meta:
        db_table='transaction'
