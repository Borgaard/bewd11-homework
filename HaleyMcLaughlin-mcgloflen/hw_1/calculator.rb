class Calculator
    def initialize
        puts "Enter a number"
        @numberOne = gets.chomp.to_i
        puts "Enter another number"
        @numberTwo= gets.chomp.to_i
        
        puts "Enter your operation: multiply, divide, add, subtract"
        @operation = gets.chomp
    end
    
    def run_calculator
        if @operation == "multiply"
            puts @numberOne * @numberTwo
        elsif @operation == "divide"
            puts @numberOne / @numberTwo
        elsif @operation == "add"
            puts @numberOne + @numberTwo
        else
            puts @numberOne - @numberTwo
            
    def log
        puts Math.log(@numberOne)
        puts Math.log(@numberTwo)
    end
    
    def cos
        puts Math.cos(@numberOne)
        puts Math.cos(@numberTwo)
    end
    
    def tan
        puts Math.tan(@numberOne)
        puts Math.tan(@numberTwo)
    end
    
    def multiply
        puts @numberOne * puts @numberTwo
    end
       
end

myCalculator = Calculator.new
    
myCalculator.log
mycalculatoralculator.cos
myCalculator.tan
myCalculator.multiply