from django.contrib import admin
from .models import Book

# Register your models here.

@admin.register(Book)
class BookAdmin(admin.ModelAdmin):
    list_display = ['title', 'author', 'isbn', 'genre', 'availability_status']
    search_fields = ['title', 'author', 'isbn', 'genre']
    list_filter = ['availability_status']
    list_editable = ['availability_status']
    list_per_page = 10
    list_max_show_all = 100