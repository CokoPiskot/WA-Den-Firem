from django.db import models

# Create your models here.

class Ucebny(models.Model):
    id_ucebny = models.IntegerField(primary_key=True)
    nazev_ucebny = models.CharField(max_length=10)
    kapacita = models.IntegerField()


