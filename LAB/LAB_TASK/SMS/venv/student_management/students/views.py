from django.shortcuts import render, get_object_or_404, redirect
from django.urls import reverse_lazy
from django.views.generic import TemplateView, ListView, CreateView, UpdateView, DeleteView
from .models import Student


# Home Page (List of Students)
class HomePageView(ListView):
    model = Student
    template_name = "students/home.html"
    context_object_name = "students"


# Add Student
class StudentCreateView(CreateView):
    model = Student
    template_name = "students/add_student.html"
    fields = ['name', 'roll', 'email', 'contact_number']
    success_url = reverse_lazy("home")


# Update Student
class StudentUpdateView(UpdateView):
    model = Student
    template_name = "students/edit_student.html"
    fields = ['name', 'roll', 'email', 'contact_number']
    success_url = reverse_lazy("home")


# Delete Student
class StudentDeleteView(DeleteView):
    model = Student
    template_name = "students/delete_confirmation.html"
    success_url = reverse_lazy("home")
