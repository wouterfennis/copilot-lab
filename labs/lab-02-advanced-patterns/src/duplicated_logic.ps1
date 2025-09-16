function Process-Data {
    param([int[]]$Data)
    $Result = @()
    foreach ($Item in $Data) {
        if ($Item -gt 0) {
            $Result += ($Item * 2)
        }
    }
    return $Result
}

function Process-DataAgain {
    param([int[]]$Data)
    $Result = @()
    foreach ($Item in $Data) {
        if ($Item -gt 0) {
            $Result += ($Item * 2)
        }
    }
    return $Result
}

# TODO: Refactor duplicated logic, add error handling, and tests
