num = "nill"
num2 = "nill"
def add(num, num2):
    return num + num2
def subtract(num, num2):
    return num - num2
def multiply(num, num2):
    return num * num2
def divide(num, num2):
    return num / num2
def main():
    num = int(input("Enter a number: "))
    num2 = int(input("Enter another number: "))
    operation = input("Enter an operation (+, -, *, /): ")
    if operation == "+":
        print(add(num, num2))
    elif operation == "-":
        print(subtract(num, num2))
    elif operation == "*":
        print(multiply(num, num2))
    elif operation == "/":
        if num2 == 0:
            print("Cannot divide by zero")
            return
        print(divide(num, num2))
    else:
        print("Invalid operation")
main()