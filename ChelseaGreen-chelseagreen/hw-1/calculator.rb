class Calculator
    
    def initialize
        puts "Enter your first number."
        @num1 = gets.chomp.to_i  
        puts "Enter your second number." 
        @num2 = gets.chomp.to_i 
        puts "Enter your operation: multiply, divide, add, subtract"
        @operation = gets.chomp 
    end 
    
    def run_calculator 
        if @operation == "multiply"
            puts @num1 * @num2
        elsif @operation == "divide"
            puts @num1 / @num2
        elsif @operation == "add"
            puts @num1 + @num2
        else 
            puts @num1 - @num2 
        end 
    end 
    
    def multiply_numbers
        puts @num1 * @num2
    end 
     
     def add_numbers
        puts @num1 + @num2
    end 
    
     def divide_numbers
        puts @num1 / @num2
    end 
    
     def subtract_numbers
        puts @num1 - @num2
    end 
end 
    
Numbas = Calculator.new
Numbas.run_calculator
        