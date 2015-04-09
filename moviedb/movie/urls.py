from django.conf.urls import patterns, url
from movie.views import MainView, UserView, MovieView, DiscussView

urlpatterns = patterns('',

    url(r'^$', MainView.main, name='main'),

    url(r'^login/$', UserView.userlogin, name='login'),
    url(r'^logout/$', UserView.userlogout, name='logout'),
    url(r'^register/$', UserView.register, name='register'),
    # url(r'^updateinfo/$', UserView.updateinfo, name='updateinfo'),
    # url(r'^user/(?P<userid>[0-9]+)/$', UserView.user, name='user'),

    url(r'^movie/(?P<movieid>[0-9]+)/$', MovieView.movie, name='movie'),
    url(r'^movie/review/(?P<movieid>[0-9]+)/$', MovieView.reviewmovie, name='reviewmovie'),
    url(r'^movie/review/delete/(?P<reviewid>[0-9]+)/$', MovieView.deletereview, name='deletereview'),
    url(r'^movie/watch/$', MovieView.watchmovielist, name='watchmovielist'),
    url(r'^movie/watch/add/(?P<movieid>[0-9]+)/$', MovieView.watchmovie, name='watchmovie'),
    url(r'^movie/watch/delete/(?P<movieid>[0-9]+)/$', MovieView.unwatchmovie, name='unwatchmovie'),
    url(r'^movie/favorite/$', MovieView.favmovielist, name='favmovielist'),
    url(r'^movie/favorite/add/(?P<movieid>[0-9]+)/$', MovieView.favmovie, name='favmovie'),
    url(r'^movie/favorite/delete/(?P<movieid>[0-9]+)/$', MovieView.unfavmovie, name='unfavmovie'),

    url(r'^discuss/post/$', DiscussView.listpost, name='listpost'),
    url(r'^discuss/post/view/(?P<postid>[0-9]+)/$', DiscussView.viewpost, name='viewpost'),
    url(r'^discuss/post/delete/(?P<postid>[0-9]+)/$', DiscussView.deletepost, name='deletepost'),
    url(r'^discuss/post/add/$', DiscussView.addpost, name='addpost'),
    url(r'^discuss/post/modify/(?P<postid>[0-9]+)/$', DiscussView.modifypost, name='modifypost'),
    url(r'^discuss/comment/delete/(?P<commentid>[0-9]+)/$', DiscussView.deletecomment, name='deletecomment'),
    url(r'^discuss/comment/add/$', DiscussView.addcomment, name='addcomment'),

)
