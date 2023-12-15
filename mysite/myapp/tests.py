from django.test import TestCase

# Create your tests here.


from itertools import combinations

def find_combinations(companies, target_hours):
    for r in range(1, len(companies) + 1):      #prochazí všechny
        for combination in combinations(companies, r):
            if sum(company["hours"] for company in combination) == target_hours:
                yield combination   #toto je takový print akorát return :D, dokáže postupně vracet všechny hodnoty

def main():                         #vytvoření seznamu který obsahu slovníky firem {nazev firmy, pozadovane trvani prednasky firmy}
    companies = [
        {"name": "NOTINO", "hours": 1},
        {"name": "AČR", "hours": 1},
        {"name": "2K GAMES", "hours": 2},
        {"name": "REDHAT", "hours": 1},
        {"name": "PLANTIFUL", "hours": 2},
        {"name": "KYNDRYL", "hours": 2},
    ]

    target_hours = 4                #kolik hodin je potreba zaplnit

    found_combinations = list(find_combinations(companies, target_hours))

    if found_combinations:
        print("Nalezeny kombinace:")
        for i, combination in enumerate(found_combinations, start=1):
            print(f"Kombinace {i}: {', '.join(company['name'] for company in combination)}")
    else:
        print("Není možné najít kombinaci.")

if __name__ == "__main__":
    main()


#TESTOVÁNÍ BRUTE-FORCE ROZŘAROVÁNÍ FIREM NA BLOKY
