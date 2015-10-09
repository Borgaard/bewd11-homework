class Calculator
    def initialize
        puts "Enter your first number:"
        @num_one = gets.chomp.to_i
        puts "Enter a second number:"
        @num_two = gets.chomp.to_i
        puts "Enter a calculation method (multiply, add, subtract, divide)"
        @method = gets.chomp
    end

    def run_calulator
        if @method == "multiply"
            !multiply
        elsif @method == "add"
            !add
        elsif @method == "subtract"
            !subtract
        elsif @method == "divide"
            !divide
        else
            puts "method unknown!"
        end
    end
    
    def multiply
        puts @num_one * @num_two
    end
    
    def add
        puts @num_one + @num_two
    end
    
    def divide
        puts @num_one / @num_two
    end
    
    def subtract
        puts @num_one - @num_two
    end
end

myCalculation = Calculator.new
myCalculation.run_calulator