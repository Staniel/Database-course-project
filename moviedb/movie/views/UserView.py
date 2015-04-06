from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth import login,authenticate,logout
from django.contrib.auth.models import User
# Create your views here.
def userlogin(request):
	# print "welcome to login"
	if request.method == 'POST':
		username = request.POST.get('username', "noname")
		password = request.POST.get('password', "123456")
		user = authenticate(username=username, password=password)
		if user is not None:
			if user.is_active:
				login(request, user)
				context = {'username': user.username}
				return render(request, 'movie/main.html', context)
		context = {'msg': "wrong username or password"}
		return render(request, 'movie/loginandreg.html', context)
	else:
		return render(request, 'movie/loginandreg.html')
	

def userlogout(request):
	print "welcome to logout"
	logout(request)
	# return render(request, 'movie/loginandreg.html')
	return redirect('moviedb:login')
def register(request):
	print "welcome to register"
	return HttpResponse("register")
def updateinfo(request):
	return HttpResponse("hello world")

def user(request):
	return HttpResponse("hello world")
