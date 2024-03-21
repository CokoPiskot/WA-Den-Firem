from django.shortcuts import render
from django.shortcuts import redirect
from .forms import FormularFirmy, FormularObory
from django.http import HttpResponseRedirect, HttpResponse
from .models import Firmy, Obory


# Create your views here.

def index(request):
    return render(request, "myapp/base.html", {})   #renderování stranka index (root)

def firmy(request):
    firmy = Firmy.objects.all()
    obory = Obory.objects.all()
    sumbitted = False
    if request.method == "POST":
        formular_firmy = FormularFirmy(request.POST)
        formular_obory = FormularObory(request.POST)
        if formular_firmy.is_valid() & formular_obory.is_valid():
            formular_firmy.save()
            formular_obory.save()
            sumbitted = True
            return HttpResponseRedirect("/firmy")
    else:
        formular_firmy = FormularFirmy
        if "submitted" in request.GET:
            sumbitted = True
    return render(request, "myapp/firmy.html", {"form":formular_firmy, "firmy":firmy, "obory":obory})  # renderování stranky firmy

def zaci(request):
    return render(request, "myapp/zaci.html", {})   #renderování stranky zaci

def ucebny(request):
    return render(request, "myapp/ucebny.html", {}) #renderování stránky ucebny

def delete_item(request, item_id):
    item = Firmy.objects.get(id_firmy=item_id)
    item.delete()
    return redirect("/firmy")

def obory(request):
    form = FormularObory()
    return render(request, "myapp/firmy.html")
