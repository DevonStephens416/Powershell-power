#gets all files in a specified folder and displays info such as how many files, file size and average file size.
#variables
$filePath = read-host "Type file path "
$Measurement = get-childitem -Path $filePath -Recurse -File | Measure-Object -Property Length -sum -Average
[pscustomobject]@{
    Count = $Measurement.Count
    Average = $Measurement.Average
    Sum = $Measurement.Sum
    ComputerName = $env:Computername 
}