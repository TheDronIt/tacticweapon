# Generated by Django 3.1.6 on 2021-05-22 04:39

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AirsoftGun',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=120)),
                ('vendor', models.CharField(choices=[('Неизвестно', 'Неизвестно'), ('Cyma', 'Cyma'), ('G&G', 'G&G')], default='Неизвестно', max_length=50)),
            ],
        ),
    ]