# Generated by Django 3.1.6 on 2021-06-03 10:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0012_material_ballweight_list'),
    ]

    operations = [
        migrations.AddField(
            model_name='material',
            name='Price',
            field=models.IntegerField(default=0),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='material',
            name='Value',
            field=models.IntegerField(default=0),
            preserve_default=False,
        ),
    ]