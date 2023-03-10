from django.contrib import admin

# Register your models here.
from blog.models import Post, Category, Comment, Tags


admin.site.register(Post)
admin.site.register(Comment)
admin.site.register(Category)
admin.site.register(Tags)
