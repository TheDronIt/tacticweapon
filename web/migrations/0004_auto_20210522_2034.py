# Generated by Django 3.1.6 on 2021-05-22 10:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0003_auto_20210522_1507'),
    ]

    operations = [
        migrations.AddField(
            model_name='airsoftgun',
            name='About',
            field=models.TextField(default=1),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='airsoftgun',
            name='Image',
            field=models.ImageField(blank=True, upload_to='airsoftgun/'),
        ),
        migrations.AlterField(
            model_name='airsoftgun',
            name='Vendor',
            field=models.CharField(choices=[('Неизвестно', 'Неизвестно'), ('Cyma', 'Cyma'), ('G&G', 'G&G'), ('Tokyo Marui', 'Tokyo Marui')], max_length=50),
        ),
    ]