# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('movie', '0002_auto_20150408_1801'),
    ]

    operations = [
        migrations.RenameField(
            model_name='comment',
            old_name='post_belong_id',
            new_name='post_belong',
        ),
    ]
