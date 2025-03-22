import os
from library.models import Asset, AssetVersion, Commit, Keyword
from datetime import datetime
import uuid
from pathlib import Path
import json
import subprocess

folder_path = Path("C:\\Users\\njbhv\\Downloads\\Week 4 Assets")

class Script:

    def runFileCrawler(self):

        for assetFolder in folder_path.iterdir():
            with (assetFolder / "metadata.json").open('r') as f:
                print("Processing", assetFolder)
                metadata = json.load(f)
                
                id = uuid.uuid4()
                assetName = metadata["assetName"]
                if assetName[-4:] == ".fbx":
                    assetName = assetName[:-4]
                assetStructureVersion = metadata["assetStructureVersion"]
                hasTexture = metadata["hasTexture"]

                asset = Asset(id=id, assetName=assetName, assetStructureVersion=assetStructureVersion, hasTexture=hasTexture, thumbnailFilepath=assetFolder / "thumbnail.png")
                asset.save()
                for keyword in metadata["keywords"]:
                    keyword, created = Keyword.objects.get_or_create(keyword=keyword.lower())
                    asset.keywordsList.add(keyword)

                for commit in metadata["commitHistory"]:
                    author = commit["author"]
                    version = commit["version"]
                    timestamp = datetime.fromisoformat(commit["timestamp"])
                    note = commit["note"]
                    commit = Commit(author=author, version=version, timestamp=timestamp, note=note, asset=asset)
                    commit.save()

                variantSet = AssetVersion(id=uuid.uuid4(), versionName="Variant Set", filepath=assetFolder / f"{assetName}.usda", asset=asset)
                variantSet.save()
                lod0 = AssetVersion(id=uuid.uuid4(), versionName="LOD0", filepath=assetFolder / "LODs" / f"{assetName}_LOD0.usda", asset=asset)
                lod0.save()
                lod1 = AssetVersion(id=uuid.uuid4(), versionName="LOD1", filepath=assetFolder / "LODs" / f"{assetName}_LOD1.usda", asset=asset)
                lod1.save()
                lod2 = AssetVersion(id=uuid.uuid4(), versionName="LOD2", filepath=assetFolder / "LODs" / f"{assetName}_LOD2.usda", asset=asset)
                lod2.save()

    def runAddAsset(self, assetName, assetStructureVersion, hasTexture, thumbnailFilepath, keywords, rootFolder):
        id = uuid.uuid4()
        asset = Asset(id=id, assetName=assetName, assetStructureVersion=assetStructureVersion, hasTexture=hasTexture, thumbnailFilepath=thumbnailFilepath)
        asset.save()
        for keyword in keywords:
            keyword, created = Keyword.objects.get_or_create(keyword=keyword.lower())
            asset.keywordsList.add(keyword)

            variantSet = AssetVersion(id=uuid.uuid4(), versionName="Variant Set", filepath=rootFolder + f"//{assetName}.usda", asset=asset)
            variantSet.save()
            lod0 = AssetVersion(id=uuid.uuid4(), versionName="LOD0", filepath=rootFolder + "//LODs" + f"//{assetName}_LOD0.usda", asset=asset)
            lod0.save()
            lod1 = AssetVersion(id=uuid.uuid4(), versionName="LOD1", filepath=rootFolder + "//LODs" + f"//{assetName}_LOD1.usda", asset=asset)
            lod1.save()
            lod2 = AssetVersion(id=uuid.uuid4(), versionName="LOD2", filepath=rootFolder + "//LODs" + f"//{assetName}_LOD2.usda", asset=asset)
            lod2.save()
    
    def runPrintAsset(self, assetName):
        asset = Asset.objects.filter(assetName=assetName)[0]
        print("Name: " + asset.assetName)
        print("Structure Version: " + asset.assetStructureVersion)
        print("Has Texture: " + str(asset.hasTexture))
        print("Keywords: " + str(asset.keywordsList.all()))
        print("Thumbnail Filepath: " + str(asset.thumbnailFilepath))

    def runGetAsset(self, assetName):
        return AssetVersion.objects.filter(asset__assetName=assetName).filter(versionName="Variant Set")[0].filepath
    
    def runGetAssetInBlender(self, assetName):
        filepath = self.runGetAsset(assetName)
        filepath = "/".join(filepath.split("\\"))
        subprocess.run(["C:\\Program Files\\Blender Foundation\\Blender 4.3\\blender.exe",
                        "--python-expr",
                        f"import bpy\nbpy.ops.wm.usd_import(filepath='{filepath}')"])