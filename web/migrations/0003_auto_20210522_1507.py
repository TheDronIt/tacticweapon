# Generated by Django 3.1.6 on 2021-05-22 05:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0002_airsoftgun_type_list'),
    ]

    operations = [
        migrations.RenameField(
            model_name='airsoftgun',
            old_name='name',
            new_name='Name',
        ),
        migrations.RenameField(
            model_name='airsoftgun',
            old_name='type_list',
            new_name='Type_list',
        ),
        migrations.RemoveField(
            model_name='airsoftgun',
            name='vendor',
        ),
        migrations.AddField(
            model_name='airsoftgun',
            name='Mechanism',
            field=models.CharField(choices=[('AEG', 'AEG'), ('Green Gas', 'Green Gas'), ('CO2', 'CO2'), ('Самовзод', 'Самовзод')], default=0, max_length=50),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='airsoftgun',
            name='Price',
            field=models.IntegerField(default=0),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='airsoftgun',
            name='Status',
            field=models.CharField(choices=[('В наличии', 'В наличии'), ('Нет в наличии', 'Нет в наличии'), ('Скоро будет', 'Скоро будет'), ('Не продается', 'Не продается')], default='В наличии', max_length=50),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='airsoftgun',
            name='Vendor',
            field=models.CharField(choices=[('Неизвестно', 'Неизвестно'), ('Cyma', 'Cyma'), ('G&G', 'G&G')], default='Cyma', max_length=50),
            preserve_default=False,
        ),
    ]
