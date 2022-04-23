from django.contrib import admin
from .models import *

admin.site.site_header='CPE231 Database Systems - Hotel Management Admin Site'
# admin.autodiscover()
# admin.site.enable_nav_sidebar=False
admin.site.register(AllBook)
admin.site.register(GetNews)
admin.site.register(Hotel)
admin.site.register(Member)
admin.site.register(News)
admin.site.register(Payment)
admin.site.register(Promotion)
admin.site.register(Room)
admin.site.register(RoomType)
admin.site.register(StaffManager)
admin.site.register(Transaction)