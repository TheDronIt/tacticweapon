# Generated by Django 3.1.6 on 2021-06-03 10:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0011_material'),
    ]

    operations = [
        migrations.AddField(
            model_name='material',
            name='BallWeight_list',
            field=models.CharField(choices=[('нет', 'нет'), ('0.20', '0.20'), ('0.25', '0.25'), ('0.28', '0.25')], default=0, max_length=50),
            preserve_default=False,
        ),
    ]
