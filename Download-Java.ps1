
#Check Path
$path = "C:\UC-One"
if(!(Test-Path -Path $path))
 {
    New-Item -Path 'C:\UC-One' -ItemType Directory
    #Gathers Files required
    ###Invoke-WebRequest -Uri https://cdnstoragepublic.blob.core.windows.net/cdndelivery/UC-One.msi -outfile "C:\UC-One\UC-One.msi" -UseBasicParsing
    Start-BitsTransfer -Source "https://cdnstoragepublic.blob.core.windows.net/cdndelivery/UC-One.msi" -Destination "C:\UC-One\UC-One.msi"
    
    $installfile = "C:\UC-One\UC-One.msi"
    $params = @("/quiet","/i";"$installfile")
    start-process -FilePath msiexec.exe -ArgumentList $params -Wait -PassThru
  }
else
  {
   Write-host "Files already Created" -ForegroundColor Red
  }



###Set-Location C:\UC-One\

###.\UC-One.msi /quiet /passive





