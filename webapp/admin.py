from django.contrib import admin

# Register your models here.
from webapp.models import Car, About, Question
from django.utils.html import mark_safe

admin.site.register(About)
admin.site.register(Question)


@admin.register(Car)
class CarAdmin(admin.ModelAdmin):
    list_display = ('title', 'door_num', 'seat_num', 'transmission', 'rating', 'price', 'image_tag')
    list_filter = ('transmission',)
    search_fields = ('title',)
    ordering = ('title',)

    def image_tag(self, obj):
        return mark_safe('<img src="%s" width="150" height="150" />' % obj.photo.url)

    image_tag.short_description = 'Image'