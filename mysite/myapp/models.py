from django.db import models

# Create your models here.

class Ucebny(models.Model):
    id_ucebny = models.AutoField(primary_key=True)
    nazev_ucebny = models.CharField(max_length=10)
    kapacita = models.IntegerField()

    def __str__(self):
        return f"{self.nazev_ucebny}"


class Firmy(models.Model):
    id_firmy = models.AutoField(primary_key=True)
    nazev_firmy = models.CharField(max_length=45)
    ucebna = models.ForeignKey(Ucebny, on_delete=models.PROTECT)
    o_firme = models.CharField(max_length=100)
    nazev_prezentace = models.CharField(max_length=100)
    def __str__(self):
        return f"{self.nazev_firmy}"


class Super(models.Model):
    login = models.CharField(max_length=45)
    heslo = models.CharField(max_length=45)
    def __str__(self):
        return f"{self.login}"
