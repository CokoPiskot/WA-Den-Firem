# Generated by Django 5.0.1 on 2024-02-28 19:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0008_obory_firmy_obory_zkratka_oboru_alter_obory_id_oboru_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='obory',
            name='firmy',
            field=models.ManyToManyField(blank=True, default=None, related_name='obory', to='myapp.firmy'),
        ),
    ]