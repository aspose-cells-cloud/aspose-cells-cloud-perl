Write-Host "Start Aspose.Cells Cloud SDK for Perl"
$StartTime = Get-Date
$passed = 0
$total =0
$failed = 0
$skipped =0
foreach ($item in Get-ChildItem ".\t\" -Include *.t  -name) {
    Write-Host $item
    [string[]]$lines = prove ".\t\$item"
    foreach ($line in $lines)
    {
        if($line  -match "ok")
        {
            $passed++
        }
    }
    Start-Sleep 15
}
$total = $passed
$EndTime = Get-Date
$timespan ="{0:N2}" -f (New-TimeSpan $StartTime  $EndTime).TotalSeconds
Write-Host "Spent ${timespan}s on finishing test. Result : Total ${total}, Passed ${passed} , Failed ${failed} ,Skipped ${skipped} ."

