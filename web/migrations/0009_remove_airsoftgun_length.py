# Generated by Django 3.1.6 on 2021-06-03 09:40

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0008_auto_20210603_1936'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='airsoftgun',
            name='Length',
        ),
    ]