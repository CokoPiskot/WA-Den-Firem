# Generated by Django 5.0.1 on 2024-02-28 19:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0017_firmy_obory'),
    ]

    operations = [
        migrations.AlterField(
            model_name='obory',
            name='zkratka_oboru',
            field=models.CharField(max_length=10),
        ),
    ]
