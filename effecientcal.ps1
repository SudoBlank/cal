$num = 0
$num2 = 0
$operation = ""
function add($a, $b) {
    return $a + $b
}
function subtract($a, $b) {
    return $a - $b
}
function multiply($a, $b) {
    return $a * $b
}
function divide($a, $b) {
    return $a / $b
}
while ($true) {
    $num = Read-Host "Enter first number"
    $operation = Read-Host "Enter operation (+, -, *, /)"
    $num2 = Read-Host "Enter second number"
    if ($operation -eq "+") {
        Write-Output (add($num, $num2))
    }
    elseif ($operation -eq "-") {
        Write-Output (subtract($num, $num2))
    }
    elseif ($operation -eq "*") {
        Write-Output (multiply($num, $num2))
    }
    elseif ($operation -eq "/") {
        if ($num2 -eq 0) {
            Write-Output "Cannot divide by zero"
            continue
        }
        Write-Output (divide($num, $num2))
    }
    else {
        Write-Output "Invalid operation"
    }
}