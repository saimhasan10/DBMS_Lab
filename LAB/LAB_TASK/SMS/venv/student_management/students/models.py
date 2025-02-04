from django.db import models

class Student(models.Model):
    name = models.CharField(max_length=100)
    roll = models.PositiveIntegerField(unique=True)
    email = models.EmailField(unique=True)
    contact_number = models.CharField(max_length=15)

    def __str__(self):
        return self.name
