from django.shortcuts import render

# Create your views here.
def index(request):
    return render(request, 'app_ex/index.html')
# linea 4 y 5