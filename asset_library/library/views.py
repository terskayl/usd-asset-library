from django.shortcuts import render
from django.http import HttpResponse
from django .template import loader
from .models import Asset
from django.db.models import Q;

# Create your views here.

def home(request):
    query = request.GET.get("q")
    assets = Asset.objects.prefetch_related('keywordsList').all()
    if query:
        assets = Asset.objects.prefetch_related('keywordsList').filter( Q(assetName__icontains=query) | Q(keywordsList__keyword__icontains=query) ).distinct()
    template = loader.get_template('home.html')
    context = {
        'assets': assets,
    }
    return HttpResponse(template.render(context, request))