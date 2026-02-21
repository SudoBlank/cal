using System;

class Program
{
    static void Add()
    {
        Console.Write("Enter two numbers: ");
        string[] inputs = Console.ReadLine().Split();
        if (inputs.Length < 2 || !int.TryParse(inputs[0], out int a) || !int.TryParse(inputs[1], out int b))
        {
            Console.WriteLine("Invalid input.");
            return;
        }
        Console.WriteLine($"The sum of {a} and {b} is {a + b}");
    }
    static void Subtract()
    {
        Console.Write("Enter two numbers: ");
        string[] inputs = Console.ReadLine().Split();
        if (inputs.Length < 2 || !int.TryParse(inputs[0], out int a) || !int.TryParse(inputs[1], out int b))
        {
            Console.WriteLine("Invalid input.");
            return;
        }
        Console.WriteLine($"The difference of {a} and {b} is {a - b}");
    }
    static void Multiply()
    {
        Console.Write("Enter two numbers: ");
        string[] inputs = Console.ReadLine().Split();
        if (inputs.Length < 2 || !int.TryParse(inputs[0], out int a) || !int.TryParse(inputs[1], out int b))
        {
            Console.WriteLine("Invalid input.");
            return;
        }
        Console.WriteLine($"The product of {a} and {b} is {a * b}");
    }
    static void Divide()
    {
        Console.Write("Enter two numbers: ");
        string[] inputs = Console.ReadLine().Split();
        if (inputs.Length < 2 || !int.TryParse(inputs[0], out int a) || !int.TryParse(inputs[1], out int b))
        {
            Console.WriteLine("Invalid input.");
            return;
        }
        if (b == 0)
        {
            Console.WriteLine("Cannot divide by zero.");
            return;
        }
        Console.WriteLine($"The quotient of {a} and {b} is {a / b}");
    }

    static void Main()
    {
        Console.WriteLine("Select an operation:\n1. Add\n2. Subtract\n3. Multiply\n4. Divide");
        Console.Write("Enter your choice: ");
        if (int.TryParse(Console.ReadLine(), out int choice))
        {
            switch (choice)
            {
                case 1: Add(); break;
                case 2: Subtract(); break;
                case 3: Multiply(); break;
                case 4: Divide(); break;
                default: Console.WriteLine("Invalid choice."); break;
            }
        }
    }
}