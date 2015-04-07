from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from movie.models import Movie
# @login_required
def main(request):
	MovieList = Movie.objects.all()
	context = {'movielist': MovieList,
			   'title': 'All movies',
			   'username': "visitor",
			   'loggedin': False,
			   'request': request
	}
	if request.user.is_authenticated():
		context['username'] = request.user.username
		context['loggedin'] = True
	return render(request, 'movie/movielist.html', context)
