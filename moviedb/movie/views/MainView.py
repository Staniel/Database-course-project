from django.shortcuts import render, redirect
from django.http import HttpResponse
# Create your views here.
def main(request):
	
	if not request.user.is_authenticated():
		return redirect('moviedb:login')
	context = {'username': request.user.username}
	return render(request, 'movie/main.html', context)
