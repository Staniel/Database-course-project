from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
def movie(request, mid):
	return HttpResponse("hello world")

def watchmovie(request):
	return HttpResponse("hello world")

def unwatchmovie(request):
	return HttpResponse("hello world")

def favmovie(request):
	return HttpResponse("hello world")

def unfavmovie(request):
	return HttpResponse("hello world")
