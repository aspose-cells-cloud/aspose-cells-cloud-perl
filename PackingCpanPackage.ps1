

function GetVersionFromMETA {
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [String]
        $File = $(throw "Parameter missing: - File.")
    )
    $NeedGet = $false
    if( Test-Path $File){
        (Get-Content $File ) | Foreach-Object {
            if ($_ -match "/CellsApi.pm") {
                $NeedGet = $true                           
            }if($NeedGet -and $_ -match "version" ){               
                if( $_ -match "\d+.\d+"){   
                    $NeedGet = $false                 
                   return $matches[0]
                }
            }
        } 
    }
    return `Get-Date -Format yy.M`
}

$APIVersion = "{0}" -f (GetVersionFromMETA "./META.json")
New-Item  -Path "temp" -ItemType Directory
$packageFolder =  "AsposeCellsCloud-CellsApi-{0}" -f $APIVersion
New-Item  -Path  "temp/$packageFolder/" -ItemType Directory
Copy-Item -Path "docs" -Destination  "temp/$packageFolder/docs" -Recurse
Copy-Item -Path "lib" -Destination  "temp/$packageFolder/lib" -Recurse
Copy-Item -Path "Build.PL" -Destination  "temp/$packageFolder/Build.PL" 
Copy-Item -Path "Makefile.PL" -Destination  "temp/$packageFolder/Makefile.PL" 
Copy-Item -Path "MANIFEST" -Destination  "temp/$packageFolder/MANIFEST" 
Copy-Item -Path "META.json" -Destination  "temp/$packageFolder/META.json" 
Copy-Item -Path "META.yml" -Destination  "temp/$packageFolder/META.yml" 
Copy-Item -Path "README.md" -Destination  "temp/$packageFolder/README.md" 
Compress-7Zip -ArchiveFileName  "$packageFolder.tar" -Path  "temp"  -Format Tar  
# Compress-7Zip -ArchiveFileName  "packages/$packageFolder.tar.gz" -Path  "$packageFolder.tar" -Format  GZip
# Remove-Item  -Path "temp" -Recurse
# Remove-Item  -Path "$packageFolder.tar"
