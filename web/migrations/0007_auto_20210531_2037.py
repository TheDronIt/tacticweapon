# Generated by Django 3.1.6 on 2021-05-31 10:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0006_auto_20210531_1812'),
    ]

    operations = [
        migrations.RenameField(
            model_name='order',
            old_name='key',
            new_name='pr_id',
        ),
        migrations.AddField(
            model_name='order',
            name='pr_type',
            field=models.CharField(default=0, max_length=120),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='order',
            name='pr_value',
            field=models.IntegerField(default=0),
            preserve_default=False,
        ),
    ]
