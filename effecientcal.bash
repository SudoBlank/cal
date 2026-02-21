echo "Enter first number: "
read num

echo "Enter second number: "
read num2

echo "Enter operation (+, -, *, /): "
read operation

if test "$operation" = "+"
    math "$num + $num2"

else if test "$operation" = "-"
    math "$num - $num2"

else if test "$operation" = "*"
    math "$num * $num2"

else if test "$operation" = "/"
    if test "$num2" -eq 0
        echo "Cannot divide by zero"
        exit 1
    end
    math "$num / $num2"

else
    echo "Invalid operation"
end