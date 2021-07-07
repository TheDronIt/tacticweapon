# Generated by Django 3.1.6 on 2021-06-18 12:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0024_finishorder'),
    ]

    operations = [
        migrations.AddField(
            model_name='finishorder',
            name='Delivery',
            field=models.CharField(choices=[('Самовывоз', 'Самовывоз'), ('Доставка', 'Доставка')], default=0, max_length=50),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='finishorder',
            name='Status',
            field=models.CharField(choices=[('Обрабатывается', 'Обрабатывается'), ('Доставляется', 'Доставляется'), ('Готово к выдаче', 'Готово к выдаче'), ('Выдано', 'Выдано')], max_length=50),
        ),
    ]