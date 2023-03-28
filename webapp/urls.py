from django.urls import path

from webapp.views import *

app_name = 'webapp'

urlpatterns = [path('', index, name='home'),
               path('about/', AboutView.as_view(), name='about'),
               path('cars/', CarListView.as_view(), name='cars'),
               path('cars/<int:pk>', CarDetailView.as_view(), name='car_detail'),
               path('contact/', contact, name='contact'),
               path('services/', services, name='services'),
               path('question/', question_view, name='question'),
]

