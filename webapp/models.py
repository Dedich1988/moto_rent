from django.db import models
from django.core.validators import MinValueValidator, MaxValueValidator
from django.utils.safestring import mark_safe


# Create your models here.
class Car(models.Model):
    """Car model"""
    TRANSMISSION_CHOISE = [
        ('automatic', 'Automatic'),
        ('manual', 'Manual'),
    ]
    title = models.CharField(max_length=100)
    door_num = models.PositiveIntegerField()
    seat_num = models.PositiveIntegerField()
    transmission = models.CharField(max_length=10, choices=TRANSMISSION_CHOISE)
    rating = models.IntegerField(validators=[
        MinValueValidator(0),
        MaxValueValidator(5),
    ])
    price = models.PositiveIntegerField()
    photo = models.ImageField(upload_to='car_photos/', blank=True)

    def __str__(self):
        return self.title


    class Meta:
        verbose_name_plural = "Cars"

    @property
    def photo_url(self):
        return self.photo.url if self.photo else ''

    def image_tag(self):
        return mark_safe('<img src="%s" width="150" height="150" />' % self.photo.url)

    image_tag.short_description = 'Image'




class About(models.Model):
    """About model"""

    level = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    text = models.TextField()
    photo = models.ImageField(upload_to='skill_photos/', blank=True)

    def __str__(self):
        return self.text[20:]


    class Meta:
        verbose_name_plural = "Abouts"

    @property
    def photo_url(self):
        return self.photo.url if self.photo else ''

    def image_tag(self):
        return mark_safe('<img src="%s" width="150" height="150" />' % self.photo.url)

    image_tag.short_description = 'Image'

class Question(models.Model):
    question_text = models.CharField(max_length=200)
    answer_text = models.CharField(max_length=200)
    hint_text = models.CharField(max_length=200)