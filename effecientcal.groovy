def add = { a, b -> a + b }
def subtract = { a, b -> a - b }
def multiply = { a, b -> a * b }
def divide = { a, b -> a / b }

String num1 = ""
String num2 = ""

while (!num1.isInteger()) {
    println "Enter the first number:"
    num1 = System.console().readLine()
}

while (!num2.isInteger()) {
    println "Enter the second number:"
    num2 = System.console().readLine()
}

int n1 = num1.toInteger()
int n2 = num2.toInteger()

println "Addition: $n1 + $n2 = ${add(n1, n2)}"
println "Subtraction: ${subtract(n1, n2)}"
println "Multiplication: ${multiply(n1, n2)}"
println "Division: ${divide(n1, n2)}"