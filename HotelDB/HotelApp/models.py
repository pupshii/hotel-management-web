from django.db import models, connections
# python manage.py makemigrations && python manage.py migrate
# เปลี่ยนไปใช้ MySQL แทน SQLite3 แล้ว

class AllBook(models.Model):
    Book_Id=models.CharField(max_length=12)
    Room_Id=models.CharField(max_length=12)
    Book_Night=models.IntegerField()
    Book_Price=models.IntegerField()
    Transaction_Id=models.CharField(max_length=12)
    def __str__(self):
        return self.Book_Id
    class Meta:
        db_table='allbook'

class GetNews(models.Model):
    GetNews_Id=models.CharField(max_length=12)
    Member_Id=models.CharField(max_length=12)
    News_Id=models.CharField(max_length=12)
    def __str__(self):
        return self.GetNews_Id
    class Meta:
        db_table='getnews'

class Hotel(models.Model):
    Hotel_Id=models.CharField(max_length=12)
    Hotel_Name=models.CharField(max_length=50)
    Hotel_Address=models.TextField()
    def __str__(self):
        return self.Hotel_Id
    class Meta:
        db_table='hotel'

class Member(models.Model):
    Member_Id=models.CharField(max_length=12)
    fName=models.CharField(max_length=50)
    lName=models.CharField(max_length=50)
    IDCard_Number=models.CharField(max_length=50)
    Email=models.CharField(max_length=50)
    Address=models.TextField()
    Tel=models.CharField(max_length=50)
    UserName=models.CharField(max_length=50)
    Password=models.CharField(max_length=50)
    def __str__(self):
        return self.Member_Id
    class Meta:
        db_table='member'

class News(models.Model):
    News_Id=models.CharField(max_length=12)
    News_Name=models.CharField(max_length=50)
    News_Detail=models.TextField()
    def __str__(self):
        return self.News_Id
    class Meta:
        db_table='news'

class Payment(models.Model):
    Payment_Id=models.CharField(max_length=12)
    Promotion_Id=models.CharField(max_length=12)
    Pay_Date=models.DateTimeField()
    All_Price=models.IntegerField()
    Vat10=models.IntegerField()
    Banking=models.CharField(max_length=12)
    def __str__(self):
        return self.Payment_Id
    class Meta:
        db_table='payment'

class Promotion(models.Model):
    Promotion_Id=models.CharField(max_length=12)
    Percent_Sales=models.FloatField()
    Start_PromDate=models.DateTimeField()
    End_PromDate=models.DateTimeField()
    Sales_Detail=models.TextField()
    def __str__(self):
        return self.Promotion_Id
    class Meta:
        db_table='promotion'

class Room(models.Model):
    Room_Id=models.CharField(max_length=12)
    Hotel_Id=models.CharField(max_length=12)
    Room_Number=models.CharField(max_length=12)
    Type_Id=models.CharField(max_length=12)
    Available_Status=models.BooleanField()
    def __str__(self):
        return self.Room_Id
    class Meta:
        db_table='room'

class RoomType(models.Model):
    Type_Id=models.CharField(max_length=12)
    Room_Name=models.CharField(max_length=50)
    PricePerNight=models.IntegerField()
    Capacity=models.PositiveSmallIntegerField()
    Room_Detail=models.TextField()
    def __str__(self):
        return self.Type_Id
    class Meta:
        db_table='roomtype'

class StaffManager(models.Model):
    Staff_Id=models.CharField(max_length=12)
    Hotel_Id=models.CharField(max_length=12)
    Staff_Name=models.CharField(max_length=30)
    Position=models.CharField(max_length=30)
    Start_Date=models.DateField(null=True, blank=True)
    End_Date=models.DateField(null=True, blank=True)
    Degree=models.IntegerField()
    Status=models.BooleanField()
    def __str__(self):
        return self.Staff_Id
    class Meta:
        db_table='staffmanager'

class Transaction(models.Model):
    Transaction_Id=models.CharField(max_length=12)
    Member_Id=models.CharField(max_length=12)
    Payment_Id=models.CharField(max_length=12)
    Check_in=models.DateTimeField()
    Check_out=models.DateTimeField(null=True, blank=True)
    Rating_Score=models.PositiveSmallIntegerField(null=True, blank=True)
    Rating_Comment=models.TextField(null=True, blank=True)
    Transaction_Date=models.DateTimeField()
    Transaction_Detail=models.TextField()
    def __str__(self):
        return self.Transaction_Id
    class Meta:
        db_table='transaction'
