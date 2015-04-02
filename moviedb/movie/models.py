from django.db import models
from django.contrib.auth.models import User
# Create your models here.
#single line use charField
#multiple lines use textField
class Movie(models.Model):
	name = models.charField(max_length=50)
	runtime = models.IntegerField(null=True, blank=True)
    storyline = models.textField(null=True, blank=True)

class Crew(models.Model):
	name = models.charField(max_length=50)
	description = models.textField(max_length=100)
	crew_type = models.IntegerField()

class Produce(models.Model):
	mid = models.ForeignKey(Movie, on_delete = models.CASCADE)
	cid = models.ForeignKey(Crew, on_delete = models.CASCADE)

class Genre(models.Model):
	name = models.charField(max_length=50)

class BelongTo(models.Model):
	mid = models.ForeignKey(Movie, on_delete = models.CASCADE)
	gid = models.ForeignKey(Genre, on_delete = models.CASCADE)

class ReleaseInfo(models.Model):
	mid = models.ForeignKey(Movie, on_delete = CASCADE)
	date = models.DateField()
	area = models.CharField(max_length = 50)

	class Meta:
		unique_together = ('id', 'mid')

class Review(models.Model):
	uid = models.ForeignKey(User, on_delete = models.CASCADE)
	mid = models.ForeignKey(Movie, on_delete = models.CASCADE)
	date = models.DateField()
	content = models.TextField(max_length = 5000, blank = True)
	rating = models.IntegerField()

class Watch(models.Model):
	uid = models.ForeignKey(User, on_delete = models.CASCADE)
	mid = models.ForeignKey(Movie, on_delete = models.CASCADE)

class Favorite(models.Model):
	uid = models.ForeignKey(User, on_delete = models.CASCADE)
	mid = models.ForeignKey(Movie, on_delete = models.CASCADE)

class Post(models.Model):
	uid = models.ForeignKey(User, on_delete = models.CASCADE)
	content = models.TextField(max_length = 5000, blank = True)
	date = models.DateField()

class Topic(Post):
	title = models.CharField(max_length = 100)

class Comment(Post):
	post_belong_id = models.ForeignKey(Topic, on_delete = models.CASCADE)

