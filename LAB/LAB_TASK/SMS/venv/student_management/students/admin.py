from django.contrib import admin
from .models import Student

# Register your models here.
@admin.register(Student)
class BookAdmin(admin.ModelAdmin):
    list_display = ['name', 'roll', 'email', 'contact_number']
    search_fields = ['name' , 'roll']
    list_filter = ['name', 'roll']
    list_per_page = 10
    list_max_show_all = 100