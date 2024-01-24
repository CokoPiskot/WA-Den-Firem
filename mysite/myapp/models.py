from django.db import models
from django import forms

# Create your models here.

"""class Ucebny(models.Model):
    id_ucebny = models.AutoField(primary_key=True)
    nazev_ucebny = models.CharField(max_length=10)
    kapacita = models.IntegerField()

    def __str__(self):
        return f"{self.nazev_ucebny}"
"""

class Firmy(models.Model):
    id_firmy = models.AutoField(primary_key=True)
    nazev_firmy = models.CharField("Název firmy", max_length=45)
    o_firme = models.CharField("O firmě", max_length=100)
    nazev_prezentace = models.CharField("Název přednášky", max_length=100)
    def __str__(self):
        return f"{self.nazev_firmy} --- ID: {self.id_firmy}"

class Obory(models.Model):
    id_oboru = models.AutoField(primary_key=True, default=1)
    nazev_oboru = models.CharField(max_length=45)
    #firma = models.ForeignKey(Firmy, models.CASCADE)
    def __str__(self):
        return f"{self.nazev_oboru} --- ID: {self.id_oboru}"


class Super(models.Model):
    login = models.CharField(max_length=45)
    heslo = models.CharField(max_length=45)
    def __str__(self):
        return f"{self.login}"
