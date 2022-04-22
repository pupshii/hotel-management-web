from django.contrib import admin
from .models import *  # power of *

admin.site.site_header='CPE231 Database Systems - Admin Site'
admin.site.register(Resort)  # ให้แอดมินเห็นฐานข้อมูล