from django.urls import path

from webapp.views import *

urlpatterns = [path('', index, name='home'),
               path('about/', about, name='about'),
               path('cars/', cars, name='cars'),
               path('contact/', contact, name='contact'),
               path('services/', services, name='services'),
]

