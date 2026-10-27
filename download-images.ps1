# Windows PowerShell: run once from the repo folder:  powershell -ExecutionPolicy Bypass -File .\download-images.ps1
Set-Location $PSScriptRoot; New-Item -ItemType Directory -Force assets | Out-Null
Get-Content images.txt | Where-Object { $_ -match '\|' } | ForEach-Object {
  $n,$u = $_ -split '\|',2; Write-Host "Downloading $n"
  try { Invoke-WebRequest "$u`?format=2500w" -OutFile "assets\$n" } catch { Invoke-WebRequest $u -OutFile "assets\$n" }
}
try { Invoke-WebRequest "https://images.squarespace-cdn.com/content/v1/689bed8c386e9d5d1c2c1327/1755141956049-SEM1NMLIIWES1ZDUGMMD/favicon.ico" -OutFile favicon.ico } catch {}
Write-Host "Done."
