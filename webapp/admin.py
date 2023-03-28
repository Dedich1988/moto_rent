from django.contrib import admin

# Register your models here.
from webapp.models import Car, About, Question
admin.site.register(Car)
admin.site.register(About)
admin.site.register(Question)