from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
def login(request):
	return HttpResponse("hello world")

def logout(request):
	return HttpResponse("hello world")

def register(request):
	return HttpResponse("hello world")

def updateinfo(request):
	return HttpResponse("hello world")

def user(request):
	return HttpResponse("hello world")
