from django.test import TestCase

# Create your tests here.

from models import Obory, Firmy


import itertools


def find_combinations(companies, length_of_event):
    for i in range(2, len(companies) + 1):                          #procházím "počet firem" na základě čísla i bude počet firem v dané kombinaci
        for combination in itertools.combinations(companies, i):    #prochazím všechny možné kombinace, atribut1 = z čeho kombinace dělám, atribut2 = kolik prvků (firem) bude v dané kombinaci
            total_hours = 0                                         #pomocná proměnná
            for company in combination:                             #procházím firmy v kombinacích
                total_hours += company["company_time"]              #přičítám čas dané firmy do pomocné proměnné, tak zjistím zda-li se to vejde do dne firem či ne
            if total_hours == length_of_event:                      #pokud časy všech firem == trvání dnu firem tak vypiš danou kombinaci
                print(combination)


def main():
    length_of_event = 4
    companies = [
        {"company_name": "NOTINO", "company_time": 1},
        {"company_name": "AČR", "company_time": 1},
        {"company_name": "2K GAMES", "company_time": 2},
        {"company_name": "REDHAT", "company_time": 1},
        {"company_name": "PLANTIFUL", "company_time": 2},
        {"company_name": "KYNDRYL", "company_time": 2},
    ]

    find_combinations(companies, length_of_event)

main()


