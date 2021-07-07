# Generated by Django 3.1.6 on 2021-06-07 00:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0022_electronics_girbox'),
    ]

    operations = [
        migrations.CreateModel(
            name='Additional',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Name', models.CharField(max_length=120)),
                ('Image', models.ImageField(upload_to='material/')),
                ('Vendor', models.CharField(choices=[('Неизвестно', 'Неизвестно'), ('FMA', 'FMA'), ('Stich Profi', 'Stich Profi'), ('ASR', 'ASR')], max_length=50)),
                ('Type_list', models.CharField(choices=[('Магазин', 'Магазин'), ('Аккумулятор', 'Аккумулятор'), ('Внешний тюнинг', 'Внешний тюнинг')], max_length=50)),
                ('For_gun', models.CharField(choices=[('нет', 'нет'), ('АК-серия', 'АК-серия'), ('М-серия', 'М-серия')], max_length=50)),
                ('N_balls', models.IntegerField()),
                ('Сurrent', models.IntegerField()),
                ('Capacity', models.IntegerField()),
                ('Voltage', models.CharField(max_length=120)),
                ('Connector', models.CharField(choices=[('нет', 'нет'), ('Mini-tamiya', 'Mini-tamiya'), ('T-type', 'T-type')], max_length=50)),
                ('Material', models.CharField(max_length=120)),
                ('About', models.TextField()),
                ('Value', models.IntegerField()),
                ('Price', models.IntegerField()),
            ],
        ),
    ]
