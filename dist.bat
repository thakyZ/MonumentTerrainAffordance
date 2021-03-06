@echo off

powershell -NoProfile -Command "Remove-Item -Recurse -Path .\dist"
powershell -NoProfile -Command "New-Item -ItemType Directory -Path .\dist"
powershell -NoProfile -Command "New-Item -ItemType Directory -Path \".\dist\MonumentTerrainAffordance\""
powershell -NoProfile -Command "New-Item -ItemType Directory -Path \".\dist\MonumentTerrainAffordance\About\""
powershell -NoProfile -Command "Copy-Item -Recurse -Path .\About\About.xml \".\dist\MonumentTerrainAffordance\About\""
powershell -NoProfile -Command "Copy-Item -Recurse -Path .\About\Manifest.xml \".\dist\MonumentTerrainAffordance\About\""
powershell -NoProfile -Command "Copy-Item -Recurse -Path .\Assemblies \".\dist\MonumentTerrainAffordance\""
powershell -NoProfile -Command "Copy-Item -Recurse -Path .\Source \".\dist\MonumentTerrainAffordance\""
powershell -NoProfile -Command "Remove-Item -Recurse -Path \".\dist\MonumentTerrainAffordance\Source\obj\""
powershell -NoProfile -Command "Remove-Item -Path \".\dist\MonumentTerrainAffordance\Source\MonumentTerrainAffordance.csproj.user\""
powershell -NoProfile -Command "Copy-Item -Recurse -Path .\LICENSE \".\dist\MonumentTerrainAffordance\""
powershell -NoProfile -Command "Copy-Item -Recurse -Path .\MonumentTerrainAffordance.sln \".\dist\MonumentTerrainAffordance\""
