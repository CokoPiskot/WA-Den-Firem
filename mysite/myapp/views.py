from django.shortcuts import render
from django.shortcuts import redirect


# Create your views here.
def index(request):
    return render(request, "myapp/base.html", {})

def firmy(request):
    return render(request, "myapp/firmy.html", {})

def zaci(request):
    return render(request, "myapp/zaci.html", {})

def ucebny(request):
    return render(request, "myapp/ucebny.html", {})

