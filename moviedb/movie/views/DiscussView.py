from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
def listpost(request):
	return HttpResponse("hello world")

def viewpost(request):
	return HttpResponse("hello world")

def deletepost(request):
	return HttpResponse("hello world")

def addpost(request):
	return HttpResponse("hello world")

def deletecomment(request):
	return HttpResponse("hello world")

def addcomment(request):
	return HttpResponse("hello world")
