from django.contrib import admin

# Register your models here.
from webapp.models import Car, About
admin.site.register(Car)
admin.site.register(About)