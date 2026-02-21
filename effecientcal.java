import java.util.Scanner;

public class effecientcal {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        System.out.print("Enter first number: ");
        int num1 = input.nextInt();
        System.out.print("Enter second number: ");
        int num2 = input.nextInt();
        
        System.out.println("Select operation: +  -  *  /");
        String op = input.next();
        
        switch (op) {
            case "+":
                System.out.println("Sum = " + (num1 + num2));
                break;
            case "-":
                System.out.println("Difference = " + (num1 - num2));
                break;
            case "*":
                System.out.println("Product = " + (num1 * num2));
                break;
            case "/":
                if (num2 == 0)
                    System.out.println("Cannot divide by zero");
                else
                    System.out.println("Quotient = " + (num1 / (double) num2));
                break;
            default:
                System.out.println("Invalid operation");
        }
        input.close();
    }
}