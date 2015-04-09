from django.db import models
from django.contrib.auth.models import User
# Create your models here.
#single line use charField
#multiple lines use textField
class Movie(models.Model):
	name = models.CharField(max_length=50)
	runtime = models.IntegerField(null=True, blank=True)
	storyline = models.TextField(null=True, blank=True)

class Crew(models.Model):
	name = models.CharField(max_length=50)
	description = models.TextField(max_length=100)
	crew_type = models.IntegerField()

class Produce(models.Model):
	mid = models.ForeignKey(Movie)
	cid = models.ForeignKey(Crew)

class Genre(models.Model):
	name = models.CharField(max_length=50)

class BelongTo(models.Model):
	mid = models.ForeignKey(Movie)
	gid = models.ForeignKey(Genre)

class ReleaseInfo(models.Model):
	mid = models.ForeignKey(Movie)
	date = models.DateField()
	area = models.CharField(max_length = 50)

	class Meta:
		unique_together = ('id', 'mid')

class Review(models.Model):
	uid = models.ForeignKey(User)
	mid = models.ForeignKey(Movie)
	date = models.DateField()
	content = models.TextField(max_length = 5000, blank = True)
	rating = models.IntegerField()

class Watch(models.Model):
	uid = models.ForeignKey(User)
	mid = models.ForeignKey(Movie)

class Favorite(models.Model):
	uid = models.ForeignKey(User)
	mid = models.ForeignKey(Movie)

class Post(models.Model):
	user = models.ForeignKey(User)
	content = models.TextField(max_length = 5000, blank = True)
	date = models.DateField()

class Topic(Post):
	title = models.CharField(max_length = 100)

class Comment(Post):
	post_belong = models.ForeignKey(Topic)

