from django.db import models

# Create your models here.

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
