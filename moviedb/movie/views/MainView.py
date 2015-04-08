from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from movie.models import Movie, BelongTo, Produce, Review
from django.db.models import Avg
# @login_required
def movie_context(request, movies, title):
	MovieList = []
	for movie in movies:
		obj = {'movie': movie}
		rel = BelongTo.objects.filter(mid__exact = movie)
		obj['genre'] = rel[0].gid.name
		produce = Produce.objects.filter(mid__exact = movie)
		#here need to distinguish crew type
		obj['crew'] = produce[0].cid.name
		rev = Review.objects.filter(mid__exact = movie).aggregate(Avg('rating'))
		obj['rating'] = rev['rating__avg']
		if obj['rating'] == None:
			obj['rating'] = 0
		MovieList.append(obj)
	context = {'movielist': MovieList,
			   'title': title,
			   'username': request.user.username,
			   'loggedin': True,
			   'request': request
	}
	return context


def main(request):
	movies = Movie.objects.all()
	context = movie_context(request, movies, "all movies")
	if not request.user.is_authenticated():
		context['username'] = "visitors"
		context['loggedin'] = False
	return render(request, 'movie/movielist.html', context)

