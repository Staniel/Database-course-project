from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from movie.models import Topic, Comment
from django.utils import timezone
from django.contrib.auth.decorators import login_required

# Create your views here.
def listpost(request):
	username = request.user.username
	if username:
		context = {'username': username, 'loggedin': True}
	else:
		context = {'username': 'visitor', 'loggedin': False}

	numPerPage = 10
	post_list = Topic.objects.select_related('user').values('id', 'user__username', 'title', 'date').order_by('-date')
	p = Paginator(post_list, numPerPage)
	page = request.GET.get('page')
	try:
		posts = p.page(page)
	except PageNotAnInteger:
		posts = p.page(1)
	except EmptyPage:
		posts = p.page(p.num_pages)
	context['posts'] = posts

	context['request'] = request
	return render(request, 'movie/postlist.html', context)

def viewpost(request, postid):
	username = request.user.username
	if username:
		context = {'username': username, 'loggedin': True}
	else:
		context = {'username': 'visitor', 'loggedin': False}

	post = Topic.objects.filter(id = postid).select_related('user').values('id', 'user__username', 'title', 'content')
	context['post'] = post[0]

	comment_list = Comment.objects.filter(post_belong_id = postid).select_related('user').values('id', 'content', 'user__username', 'date').order_by('-date')
	numPerPage = 10
	p = Paginator(comment_list, numPerPage)
	page = request.GET.get('page')
	try:
		comments = p.page(page)
	except PageNotAnInteger:
		comments = p.page(1)
	except EmptyPage:
		comments = p.page(p.num_pages)
	context['comments'] = comments

	context['request'] = request
	return render(request, 'movie/post.html', context)

@login_required
def deletepost(request, postid):
	Topic.objects.filter(id = postid).delete()
	return redirect('moviedb:listpost')

@login_required
def addpost(request):
	user = request.user
	title = request.POST.get('title')
	content = request.POST.get('content')
	date = timezone.now()
	topic = Topic(user = user, title = title, content = content, date = date)
	topic.save()
	return HttpResponse("success")

@login_required
def modifypost(request, postid):
	user = request.user
	title = request.POST.get('title')
	content = request.POST.get('content')
	date = timezone.now()
	Topic.objects.filter(id = postid).update(title = title, content = content, date = date)
	return HttpResponse("success")

@login_required
def deletecomment(request, commentid):
	comment = Comment.objects.filter(id = commentid)
	postid = comment.select_related('post_belong').values('post_belong__id')[0]['post_belong__id']
	comment.delete()
	return redirect('moviedb:viewpost', postid)

@login_required
def addcomment(request):
	user = request.user
	content = request.POST.get('content')
	post_belong_id = request.POST.get('post_belong_id')
	post_belong = Topic.objects.get(id = post_belong_id)
	date = timezone.now()
	comment = Comment(user = user, content = content, post_belong = post_belong, date = date)
	comment.save()
	return HttpResponse("success")
