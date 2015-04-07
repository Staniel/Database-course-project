from django.shortcuts import render, Http404
from django.http import HttpResponse
from movie.models import Movie
from django.contrib.auth.decorators import login_required
# Create your views here.
def movie(request, movieid):
	try:
		movie = Movie.objects.get(id__exact=movieid)
	except Movie.DoesNotExist:
		raise Http404("Movie does not exist")
	context = {'movie': movie,
			   'username': "visitor",
			   'loggedin': False,
			   'request': request
	}
	if request.user.is_authenticated():
		context['username'] = request.user.username
		context['loggedin'] = True
	return render(request, 'movie/moviedetail.html', context)

@login_required
def watchmovielist(request):
	return HttpResponse("hello world")

@login_required
def watchmovie(request, movieid):
	return HttpResponse("hello world")

@login_required
def unwatchmovie(request, movieid):
	return HttpResponse("hello world")

@login_required
def favmovielist(request):
	return HttpResponse("hello world")

@login_required
def favmovie(request, movieid):
	return HttpResponse("hello world")

@login_required
def unfavmovie(request, movieid):
	return HttpResponse("hello world")
