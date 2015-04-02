from django.conf.urls import patterns, url
from movie.views.user_view import placeholder

urlpatterns = patterns('',
    url(r'^login$', placeholder, name='login'),
    url(r'^logout$', placeholder, name='logout'),
    url(r'^register$', placeholder, name='register'),
    url(r'^updateinfo$', placeholder, name='updateinfo'),
    url(r'^$', placeholder, name='main'),
    url(r'^person/(?P<personid>[0-9]+)/$', placeholder, name='person'),
    url(r'^movie/(?P<movieid>[0-9]+)/$', placeholder, name='movie'),
    url(r'^movie/watch/add/(?P<movieid>[0-9]+)/$', placeholder, name='watchmovie'),
    url(r'^movie/watch/delete/(?P<movieid>[0-9]+)/$', placeholder, name='unwatchmovie'),
    url(r'^movie/favorite/add/(?P<movieid>[0-9]+)/$', placeholder, name='favmovie'),
    url(r'^movie/favorite/delete/(?P<movieid>[0-9]+)/$', placeholder, name='unfavmovie'),
    url(r'^discuss/post/$', placeholder, name='listpost'),
    url(r'^discuss/post/view/(?P<postid>[0-9]+)/$', placeholder, name='viewpost'),
    url(r'^discuss/post/delete/(?P<postid>[0-9]+)/$', placeholder, name='deletepost'),
    url(r'^discuss/post/add/$', placeholder, name='addpost'),
    url(r'^discuss/comment/delete/(?P<commentid>[0-9]+)/$', placeholder, name='deletecomment'),
    url(r'^discuss/comment/add/$', placeholder, name='addcomment'),

)
