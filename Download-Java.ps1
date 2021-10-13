
#Check Path
$path = "C:\UC-One"
if(!(Test-Path -Path $path))
 {
    New-Item -Path 'C:\UC-One' -ItemType Directory
  }
else
  {
   Write-host "Files already Created" -ForegroundColor Red
  }

#Gathers Files required
Invoke-WebRequest -Uri https://cdnstoragepublic.blob.core.windows.net/cdndelivery/UC-One.msi -outfile "C:\UC-One\UC-One.msi"

#wait for download
Start-Sleep -Seconds 20

Set-Location C:\UC-One\

.\UC-One.msi /quiet /passive





