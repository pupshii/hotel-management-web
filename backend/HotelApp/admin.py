from django.contrib import admin
from .models import *
from django.apps import apps

# admin.autodiscover()
# admin.site.enable_nav_sidebar=False

app=apps.get_app_config('HotelApp')
for model_name, model in app.models.items():
    admin.site.register(model)

admin.site.site_header='CPE231 Database Systems - Hotel Management Admin Site'