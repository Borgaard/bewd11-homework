class Calculator
   def initialize
       puts "First number:"
       @num1 = gets.chomp.to_i
       puts "Second number:"
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
    
    def add
        puts @num1 + @num2
    end
    
    def subtract
        puts @num1 - @num2
    end
    
    def divide
        puts @num1/@num2
    end
    
    def multiply
        puts @num1 * @num2
    end
    
end    


myCalc = Calculator.new

myCalc.add

myCalc.subtract

myCalc.divide

myCalc.multiply

myCalc.run_calculator

