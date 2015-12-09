



class Calculator 
    def initialize 
        puts "Enter your first number:"
        @num1 = gets.chomp.to_i 
        puts "Enter your second number:"
        @num2 = gets.chomp.to_i  

    end





    def cbrt
        puts Math.cbrt(@num1)
    end 


    def add 
        puts @num1 + @num2
    end 
    
    
    def multiply 
        puts @num1 * @num2 
    end 
    
    
    def asin
        puts Math.asin(@num1)
    end


end 
        
myCalculator = Calculator.new()

myCalculator.cbrt
myCalculator.add 
        

    

