from django import forms
from django.forms import ModelForm
from .models import Firmy, Obory

"""
Tento soubor slouží k ukládání funkcí co se týče FORMULÁŘŮ (např. přidání firmy)
"""

obory = [
    ('orange', 'Oranges'),
    ('cantaloupe', 'Cantaloupes'),
    ('mango', 'Mangoes'),
    ('honeydew', 'Honeydews'),
    ]

class FormularFirmy(ModelForm):
    class Meta:                 #speciálně u djanga
        model = Firmy
        fields = ["nazev_firmy", "nazev_prezentace", "o_firme"]

        widgets = {
            "nazev_firmy": forms.TextInput(attrs={"class": "search-input-2"}),
            "nazev_prezentace": forms.TextInput(attrs={"class": "search-input-2"}),
            "o_firme": forms.TextInput(attrs={"class": "search-input-2"}),
        }

class FormularObory(ModelForm):
    class Meta:
        model = Obory
        fields = ["nazev_oboru"]

        widgets = {
                "nazev_oboru": forms.Select(choices=obory)
            }