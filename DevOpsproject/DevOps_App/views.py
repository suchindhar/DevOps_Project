from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def Guvi(request):
    return HttpResponse('<h1 style="color:Purple">Hello World</h1>')
