from django.urls import path

from webapp.views import *

app_name = 'webapp'

urlpatterns = [path('', index, name='home'),
               path('about/', AboutView.as_view(), name='about'),
               path('cars/', cars, name='cars'),
               path('cars/<int:pk>', CarDetailView.as_view(), name='car_detail'),
               path('contact/', contact, name='contact'),
               path('services/', services, name='services'),
               path('question/', question_view, name='question'),
               path('accounts/login/', CRLoginView.as_view(), name='login'),
               path('accounts/logout/', CRLogoutView.as_view(), name='logout'),
               path('accounts/register/', RegisterUserView.as_view(), name='register'),
               path('accounts/regitster/done/', RegisterDoneView.as_view(), name='register_done'),
               path('api/cars/', CarListAPIView.as_view(), name='car-list-api'),

]

