from django.urls import path
from .views import HomePageView, StudentCreateView, StudentUpdateView, StudentDeleteView

urlpatterns = [
    path('', HomePageView.as_view(), name='home'),
    path('add/', StudentCreateView.as_view(), name='student_add'),
    path('edit/<int:pk>/', StudentUpdateView.as_view(), name='student_edit'),
    path('delete/<int:pk>/', StudentDeleteView.as_view(), name='student_delete'),
]
