# Generated by Django 3.1.6 on 2021-06-03 10:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0010_auto_20210603_1946'),
    ]

    operations = [
        migrations.CreateModel(
            name='Material',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Name', models.CharField(max_length=120)),
                ('Image', models.ImageField(upload_to='material/')),
                ('Vendor', models.CharField(choices=[('Неизвестно', 'Неизвестно'), ('G&G', 'G&G'), ('AimTop', 'AimTop')], max_length=50)),
                ('Type_list', models.CharField(choices=[('Шар', 'Шар'), ('Газ', 'Газ')], max_length=50)),
            ],
        ),
    ]
