function logFiles() {
    Write-Host "---"
    Get-ChildItem "C:\Users\ac85154\Desktop\Program" -recurse | % {
        Write-Host $_.BaseName
        Write-Host ""
    }
    Write-Host "---"
}
logFiles