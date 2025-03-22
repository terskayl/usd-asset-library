import uuid
from django.db import models

# Create your models here.

class Keyword(models.Model):
    keyword = models.CharField(max_length=200, unique=True, default="")

    def __str__(self):
        return self.keyword

class Asset(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    assetName = models.CharField(max_length=200)
    assetStructureVersion = models.CharField(max_length=32)
    keywordsList = models.ManyToManyField(Keyword)
    hasTexture = models.BooleanField(default=False)
    thumbnailFilepath = models.CharField(max_length=200)

    def __str__(self):
        return self.assetName
    
class Commit(models.Model):
    author = models.CharField(max_length=200)
    version = models.CharField(max_length=32)
    timestamp = models.DateTimeField()
    note = models.TextField()
    asset = models.ForeignKey(Asset, on_delete=models.CASCADE)

class AssetVersion(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    versionName = models.CharField(max_length=200)
    filepath = models.CharField(max_length=200)    
    asset = models.ForeignKey(Asset, on_delete=models.CASCADE)

    def __str__(self):
        return f"{self.versionName} - {self.asset.assetName}"
