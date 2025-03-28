import uuid
from django.db import models

# Create your models here.

class Keyword(models.Model):
    keyword = models.CharField(max_length=200, unique=True, default="")

    def __str__(self):
        return self.keyword

class Author(models.Model):
    pennkey = models.CharField(max_length=200, primary_key=True)
    firstName= models.CharField(max_length=200, default="")
    lastName= models.CharField(max_length=200, default="")
    email= models.CharField(max_length=200, default="")

    def __str__(self):
        return f"{self.firstName} {self.lastName} ({self.pennkey})"
    
class Asset(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    assetName = models.CharField(max_length=200)
    assetStructureVersion = models.CharField(max_length=32)
    keywordsList = models.ManyToManyField(Keyword)
    hasTexture = models.BooleanField(default=False)
    thumbnail = models.FileField(upload_to='uploads/', default="uploads/default.png")
    checkedOutBy = models.ForeignKey(Author, on_delete=models.SET_NULL, null=True, blank=True)
    s3link = models.CharField(max_length=200)

    def __str__(self):
        return self.assetName
    
class AssetVersion(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    version = models.CharField(max_length=32)
    versionName = models.CharField(max_length=200)
    filepath = models.CharField(max_length=200)    
    asset = models.ForeignKey(Asset, on_delete=models.CASCADE)
    dependencies = models.ManyToManyField(Asset, blank=True, related_name='dependents')
    status = models.CharField(max_length=200, default="")
    # Would we want it to link back to previous versions?

    def __str__(self):
        return f"{self.versionName} - {self.asset.assetName}"

class Commit(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    author = models.ForeignKey(Author, on_delete=models.SET_NULL, null=True, blank=True)
    version = models.CharField(max_length=32)
    timestamp = models.DateTimeField()
    note = models.TextField()
    sublayers = models.ManyToManyField(AssetVersion, blank=True)
    asset = models.ForeignKey(Asset, on_delete=models.CASCADE)

    def __str__(self):
        return f"{self.version} - {self.asset.assetName}"