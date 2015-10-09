class Calculator
   def initialize
        puts "add a value for x"
        @valueX = gets.chomp.to_i
        
        puts "add a value for y"
        @valueY = gets.chomp.to_i
        
        puts "Ender your operatoin: multiply, Divide, add, subtract"
        @operation = gets.chomp
   end
    
    def run_calculator
        if @operation == "multiply"
            puts @valueX * @valueY
        elsif @operation == "divide"
            puts @valueX / @valueY 
        elsif @operation == "add"
            puts @valueX + @valueY
        elsif @operation == "subtract"
            puts @valueX - @valueY
        end     
    end

end

myCalc = Calculator.new
myCalc.run_calculator