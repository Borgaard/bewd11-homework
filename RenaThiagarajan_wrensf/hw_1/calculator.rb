
class Calculator
    def initilize
    puts "enter your first number."
    @num1 = gets.chomp.to_i
    puts "enter your sencond number."
    @num2 = gets.chomp.to_i 
    end
    
    def add_two 
    puts @num1 + @num2
    end
    
    def divide
    puts @num1 / @num2
    end
    
    def subtract 
    puts @num1 - @num2
    end
    
    def multiply 
    puts @num1 * @num2
    end
    
    puts "enter your operation: multiply, divide, add, subtract"
    @operation = gets.chomp
    end
    
    def run_calculator
        if @operation == "multiply"
        puts @num1 * @num2
        
        elsif @operation == "add"
        puts @num1 + num2
        
        elsif @operation == "subtract"
        puts @num1 - @num2
        
        else @operation == "divide"
        puts @num1 / num2
        
        end
end

myCalc = run_calculator


