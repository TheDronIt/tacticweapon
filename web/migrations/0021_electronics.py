# Generated by Django 3.1.6 on 2021-06-05 06:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0020_auto_20210605_1532'),
    ]

    operations = [
        migrations.CreateModel(
            name='Electronics',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Name', models.CharField(max_length=120)),
                ('Image', models.ImageField(upload_to='material/')),
                ('Vendor', models.CharField(choices=[('Неизвестно', 'Неизвестно'), ('FMA', 'FMA'), ('Stich Profi', 'Stich Profi'), ('ASR', 'ASR')], max_length=50)),
                ('Type_list', models.CharField(choices=[('Гирбокс', 'Гирбокс'), ('Мотор', 'Мотор'), ('Пружина', 'Пружина'), ('Цилиндр', 'Цилиндр'), ('Камера хоп-апа', 'Камера хоп-апа')], max_length=50)),
                ('Girbox_equipment', models.CharField(max_length=120)),
                ('Motor_type', models.CharField(choices=[('нет', 'нет'), ('Базовый', 'Базовый'), ('High Torque', 'High Torque')], max_length=50)),
                ('Stem_length', models.CharField(choices=[('нет', 'нет'), ('Короткий', 'Короткий'), ('Длинный', 'Длинный')], max_length=50)),
                ('Seat_type', models.CharField(choices=[('нет', 'нет'), ('AEG', 'AEG')], max_length=50)),
                ('Spring', models.IntegerField()),
                ('Cylinder_volume', models.CharField(max_length=120)),
                ('For_gun', models.CharField(choices=[('нет', 'нет'), ('АК-серия', 'АК-серия'), ('М-серия', 'М-серия')], max_length=50)),
                ('Material', models.CharField(max_length=120)),
                ('About', models.TextField()),
                ('Value', models.IntegerField()),
                ('Price', models.IntegerField()),
            ],
        ),
    ]