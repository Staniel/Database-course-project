# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='BelongTo',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Crew',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=50)),
                ('description', models.TextField(max_length=100)),
                ('crew_type', models.IntegerField()),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Favorite',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Genre',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=50)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Movie',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=50)),
                ('runtime', models.IntegerField(null=True, blank=True)),
                ('storyline', models.TextField(null=True, blank=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Post',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('content', models.TextField(max_length=5000, blank=True)),
                ('date', models.DateField()),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Comment',
            fields=[
                ('post_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='movie.Post')),
            ],
            options={
            },
            bases=('movie.post',),
        ),
        migrations.CreateModel(
            name='Produce',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('cid', models.ForeignKey(to='movie.Crew')),
                ('mid', models.ForeignKey(to='movie.Movie')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='ReleaseInfo',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('date', models.DateField()),
                ('area', models.CharField(max_length=50)),
                ('mid', models.ForeignKey(to='movie.Movie')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Review',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('date', models.DateField()),
                ('content', models.TextField(max_length=5000, blank=True)),
                ('rating', models.IntegerField()),
                ('mid', models.ForeignKey(to='movie.Movie')),
                ('uid', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Topic',
            fields=[
                ('post_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='movie.Post')),
                ('title', models.CharField(max_length=100)),
            ],
            options={
            },
            bases=('movie.post',),
        ),
        migrations.CreateModel(
            name='Watch',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('mid', models.ForeignKey(to='movie.Movie')),
                ('uid', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.AlterUniqueTogether(
            name='releaseinfo',
            unique_together=set([('id', 'mid')]),
        ),
        migrations.AddField(
            model_name='post',
            name='uid',
            field=models.ForeignKey(to=settings.AUTH_USER_MODEL),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='favorite',
            name='mid',
            field=models.ForeignKey(to='movie.Movie'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='favorite',
            name='uid',
            field=models.ForeignKey(to=settings.AUTH_USER_MODEL),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='comment',
            name='post_belong_id',
            field=models.ForeignKey(to='movie.Topic'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='belongto',
            name='gid',
            field=models.ForeignKey(to='movie.Genre'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='belongto',
            name='mid',
            field=models.ForeignKey(to='movie.Movie'),
            preserve_default=True,
        ),
    ]
