#include <stdio.h>
int add() {
    int a, b, sum;
    printf("Enter two numbers: ");
    scanf("%d %d", &a, &b);
    sum = a + b;
    printf("The sum of %d and %d is %d\n", a, b, sum);
    return 0;
}
int subtract() {
    int a, b, difference;
    printf("Enter two numbers: ");
    scanf("%d %d", &a, &b);
    difference = a - b;
    printf("The difference of %d and %d is %d\n", a, b, difference);
    return 0;
}
int multiply() {
    int a, b, product;
    printf("Enter two numbers: ");
    scanf("%d %d", &a, &b);
    product = a * b;
    printf("The product of %d and %d is %d\n", a, b, product);
    return 0;
}
int divide() {
    int a, b;
    float quotient;
    printf("Enter two numbers: ");
    scanf("%d %d", &a, &b);
    if (b != 0) {
        quotient = (float)a / b;
        printf("The quotient of %d and %d is %.2f\n", a, b, quotient);
    } else {
        printf("Error: Division by zero is not allowed.\n");
    }
    return 0;
}  
int main() {
    int choice;
    printf("Select an operation:\n");
    printf("1. Add\n");
    printf("2. Subtract\n");
    printf("3. Multiply\n");
    printf("4. Divide\n");
    printf("Enter your choice: ");
    scanf("%d", &choice);
    switch (choice) {
        case 1:
            add();
            break;
        case 2:
            subtract();
            break;
        case 3:
            multiply();
            break;
        case 4:
            divide();
            break;
        default:
            printf("Invalid choice. Please select a valid operation.\n");
    }
    return 0;
}