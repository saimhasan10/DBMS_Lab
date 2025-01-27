from django.shortcuts import render
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from .models import Book
from django.urls import reverse_lazy

# book list view
class BookListView(ListView):
    model = Book
    template_name = 'library/book_list.html'
    context_object_name = 'books'

# book create view
class BookCreateView(CreateView):
    model = Book
    fields = ['title', 'author', 'isbn', 'genre', 'availability_status', 'image']
    template_name = 'library/book_form.html'
    success_url = reverse_lazy('book_list')

# book update view
class BookUpdateView(UpdateView):
    model = Book
    fields = ['title', 'author', 'isbn', 'genre', 'availability_status', 'image']
    template_name = 'library/book_form.html'
    success_url = reverse_lazy('book_list')

# book delete view
class BookDeleteView(DeleteView):
    model = Book
    template_name = 'library/book_confirm_delete.html'
    success_url = reverse_lazy('book_list')
