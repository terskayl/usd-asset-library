from django.shortcuts import render
from django.shortcuts import get_object_or_404
from django.shortcuts import redirect
from django.http import HttpResponse
from django.http import StreamingHttpResponse
from django .template import loader
from .models import Asset, Commit, AssetVersion, Keyword
from django.db.models import Q;
from .utils.s3_utils import S3Manager
from .utils.zipper import zip_files_from_memory
import os
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

def download_asset_by_name(request, assetName):
    s3 = S3Manager()
    prefix = f"{assetName}"
    
    keys = s3.list_s3_files(prefix)
    print(f"[DEBUG] S3 keys found for prefix '{prefix}':", keys)

    file_data = {}
    for key in keys:
        name_in_zip = os.path.relpath(key, prefix)
        file_bytes = s3.download_s3_file(key)
        print(f"[DEBUG] Downloaded '{key}' ({len(file_bytes)} bytes)")
        file_data[name_in_zip] = file_bytes

    if not file_data:
        print("[DEBUG] No files downloaded from S3 — zip will be empty.")
    else:
        print(f"[DEBUG] Zipping {len(file_data)} files...")

    zip_buffer = zip_files_from_memory(file_data)

    response = StreamingHttpResponse(zip_buffer, content_type='application/zip')
    response['Content-Disposition'] = f'attachment; filename="{assetName}.zip"'
    return response