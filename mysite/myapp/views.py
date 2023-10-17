from django.shortcuts import render
from django.shortcuts import redirect


# Create your views here.
def index(request):
    return render(request, "myapp/main.html", {})

def redirect_admin(request):
    return redirect("/")
