from rest_framework import serializers
from .models import Car

class CarSerializer(serializers.ModelSerializer):
    class Meta:
        model = Car
        fields = ['id', 'title', 'door_num', 'seat_num', 'transmission', 'rating', 'price', 'photo_url']
