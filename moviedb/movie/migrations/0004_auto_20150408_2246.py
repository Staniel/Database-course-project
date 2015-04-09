# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('movie', '0003_auto_20150408_2142'),
    ]

    operations = [
        migrations.AlterField(
            model_name='crew',
            name='description',
            field=models.TextField(max_length=100, blank=True),
        ),
        migrations.AlterField(
            model_name='post',
            name='date',
            field=models.DateTimeField(),
        ),
    ]
