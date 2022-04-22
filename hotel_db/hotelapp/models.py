from django.db import models

# python manage.py makemigrations
# python manage.py migrate
class Resort(models.Model):   #ลองสร้าง table เล่น
    title=models.CharField(max_length=200)
    description=models.TextField(null=True, blank=True)
    price=models.DecimalField(max_digits=11, decimal_places=2, null=True, blank=True)
    quality=models.IntegerField(null=True, blank=True)
    def __str__(self):
        return self.title