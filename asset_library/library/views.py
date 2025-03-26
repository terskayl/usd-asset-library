from django.shortcuts import render
from django.http import HttpResponse
from django .template import loader
from .models import Asset, Commit, AssetVersion, Keyword
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

def asset_detail(request, asset_name):
    asset = Asset.objects.prefetch_related('keywordsList').get(assetName=asset_name)
    template = loader.get_template('asset_detail.html')
    commits = Commit.objects.filter(asset=asset).order_by('-timestamp')
    versions = AssetVersion.objects.filter(asset=asset).order_by('-versionName')
    context = {
        'asset': asset,
        'commits': commits,
        'versions': versions,
    }
    return HttpResponse(template.render(context, request))