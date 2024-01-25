from django.shortcuts import render
from django.shortcuts import redirect
from .forms import FormularFirmy
from django.http import HttpResponseRedirect, HttpResponse
from .models import Firmy


# Create your views here.

def index(request):
    return render(request, "myapp/base.html", {})   #renderování stranka index (root)

def firmy(request):
    firmy = Firmy.objects.all()
    sumbitted = False
    if request.method == "POST":
        formular = FormularFirmy(request.POST)
        if formular.is_valid():
            formular.save()
            sumbitted = True
            return HttpResponseRedirect("/firmy")
    else:
        formular = FormularFirmy
        if "submitted" in request.GET:
            sumbitted = True
    return render(request, "myapp/firmy.html", {"form":formular, "firmy":firmy})  # renderování stranky firmy

def zaci(request):
    return render(request, "myapp/zaci.html", {})   #renderování stranky zaci

def ucebny(request):
    return render(request, "myapp/ucebny.html", {}) #renderování stránky ucebny

def delete_item(request, item_id):
    item = Firmy.objects.get(id_firmy=item_id)
    item.delete()
    return redirect("/firmy")

