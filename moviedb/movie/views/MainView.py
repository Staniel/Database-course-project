from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required

# @login_required
def main(request):
	context = {'username': "visitor"}
	if request.user.username:
		context = {'username': request.user.username, 'loggedin': True}
	return render(request, 'movie/main.html', context)
