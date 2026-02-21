class main
    def self.add()
        puts "Enter Number 1:"
        num1 = gets.chomp.to_i
        puts "Enter Number 2:"
        num2 = gets.chomp.to_i
        sum = num1 + num2
        puts "The sum of #{num1} and #{num2} is: #{sum}"
    end
    def self.subtract()
        puts "Enter Number 1:"
        num1 = gets.chomp.to_i
        puts "Enter Number 2:"
        num2 = gets.chomp.to_i
        difference = num1 - num2
        puts "The difference of #{num1} and #{num2} is: #{difference}"
    end
    def self.multiply()
        puts "Enter Number 1:"
        num1 = gets.chomp.to_i
        puts "Enter Number 2:"
        num2 = gets.chomp.to_i
        product = num1 * num2
        puts "The product of #{num1} and #{num2} is: #{product}"
    end
    def self.divide()
        puts "Enter Number 1:"
        num1 = gets.chomp.to_i
        puts "Enter Number 2:"
        num2 = gets.chomp.to_i
        if num2 != 0
            quotient = num1 / num2
            puts "The quotient of #{num1} and #{num2} is: #{quotient}"
        else
            puts "Cannot divide by zero!"
        end
    end
    def self.main()
        puts "Select an operation:"
        puts "1. Add"
        puts "2. Subtract"
        puts "3. Multiply"
        puts "4. Divide"
        choice = gets.chomp.to_i
        case choice
        when 1
            add()
        when 2
            subtract()
        when 3
            multiply()
        when 4
            divide()
        else
            puts "Invalid choice!"
        end
    end
end
main.main()