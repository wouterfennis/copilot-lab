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

function Filter-PositiveNumbers {
    param([int[]]$Numbers)
    $Filtered = @()
    foreach ($Num in $Numbers) {
        if ($Num -gt 0) {
            $Filtered += $Num
        }
    }
    return $Filtered
}

function Double-PositiveValues {
    param([int[]]$Values)
    $Doubled = @()
    foreach ($Val in $Values) {
        if ($Val -gt 0) {
            $Doubled += ($Val * 2)
        }
    }
    return $Doubled
}

function Transform-PositiveItems {
    param([int[]]$Items, [int]$Multiplier = 2)
    $Transformed = @()
    foreach ($Item in $Items) {
        if ($Item -gt 0) {
            $Transformed += ($Item * $Multiplier)
        }
    }
    return $Transformed
}

# TODO: Refactor duplicated logic, add error handling, and tests
