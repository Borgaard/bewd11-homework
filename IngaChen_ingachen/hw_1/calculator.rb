class Calculator 
    def initialize
        puts "Give me a random number"
        @num1 = gets.chomp.to_i
        puts "Give me a second random number"
        @num2 = gets.chomp.to_i
        
        puts "Enter your operation: log, sine, square root, tangent"
        @operation = gets.chomp 
        
    def run_calculator
        if @operation == "log"
            puts Math.log(@num1,@num2)
        elsif @operation == "sine"
            puts Math.sin(@num1)
        elsif @operation == "square root"
            puts Math.sqrt(@num1)
        else
            puts Math.tan(@num1)
    end
        
    end
    
    def logarithm
        puts Math.log(@num1,@num2)
    end
    
    def sine
        puts Math.sin(@num1)
    end
    
    def square_root
        puts Math.sqrt(@num2)
    end
    
    def tangent
        puts Math.tan(@num1)
    end
end

myCalc = Calculator.new
myCalc.logarithm
myCalc.sine
myCalc.square_root
myCalc.tangent