# Intentionally duplicated logic for refactoring practice

Write-Host "Starting script"

# Block A
$input1 = "Alpha,Beta,Gamma"
$parts1 = $input1.Split(',') | ForEach-Object { $_.Trim().ToUpper() }
$joined1 = ($parts1 -join ';')
Write-Host "Processed: $joined1"

# Block B (duplicate style)
$input2 = "Delta, Epsilon , Zeta"
$parts2 = $input2.Split(',') | ForEach-Object { $_.Trim().ToUpper() }
$joined2 = ($parts2 -join ';')
Write-Host "Processed: $joined2"

# Block C (slight variation)
$input3 = "eta, theta , iota"
$parts3 = $input3.Split(',') | ForEach-Object { $_.Trim().ToUpper() }
$joined3 = ($parts3 -join ';')
Write-Host "Processed: $joined3"

Write-Host "Done"
