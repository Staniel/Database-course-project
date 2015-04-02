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
	mid = models.ForeignKey(Movie)
	cid = models.ForeignKey(Crew)
class Genre(models.Model):
	name = models.charField(max_length=50)
class BelongTo(models.Model):
	mid = models.ForeignKey(Movie)
	gid = models.ForeignKey(Genre)


