from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth import login,authenticate,logout
from django.contrib.auth.models import User

# Create your views here.
def userlogin(request):
	print request.POST
	next = ""
	if request.GET:  
		next = request.GET['next']
	context = {'next' : next}
	if request.method == 'POST':
		username = request.POST.get('username', "noname")
		password = request.POST.get('password', "123456")
		user = authenticate(username=username, password=password)
		if user is not None:
			if user.is_active:
				login(request, user)
				if next == "":
					return redirect('moviedb:main')
				else:
					return redirect(next)
		context['msg'] = "wrong username or password"
		return render(request, 'movie/loginandreg.html', context)
	return render(request, 'movie/loginandreg.html', context)
	
def userlogout(request):
	logout(request)
	return redirect('moviedb:login')

def register(request):
	if request.method == 'POST':
		username = request.POST.get('username', "noname")
		password = request.POST.get('password', "123456")
		prevuser=User.objects.filter(username=username)
		if len(prevuser) > 0:
			context = {'registermsg': "username have been used before", 'success': False}
			return render(request, 'movie/loginandreg.html', context)			
		user = User.objects.create_user(username=username, password=password)
		context = {'registermsg': "success, please login", 'success': True}
		return render(request, 'movie/loginandreg.html', context)	
	else:
		return render(request, 'movie/loginandreg.html')

def updateinfo(request):
	return HttpResponse("hello world")

def user(request):
	return HttpResponse("hello world")
