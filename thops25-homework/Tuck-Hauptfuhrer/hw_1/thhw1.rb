
puts "Give me your first number:"
a = gets

puts "Give me your second number:"
b = gets

puts "Would you rather add the numbers' cosines or logs? Cosines=1,Logs=2"
c = gets

class Calculator
    def initialize(num1,num2,decision)
        @num1 = num1.to_f
        @num2 = num2.to_f
        @decision = decision.to_f
    end
    
    def hyp
        puts Math.hypot(@num1,@num2)
    end
    
    def twologs
        puts Math.log(@num1) + Math.log(@num2)
    end
    
    def added_cos
        puts Math.cos(@num1) + Math.cos(@num2)
    end
    
    def added_cube_roots
        puts Math.cbrt(@num1) + Math.cbrt(@num2)
    end
    
    def run_calculator
        if @decision===1
            puts self.added_cos
        elsif @decision===2
            puts self.twologs
        end
    end

end    

test_numbers = Calculator.new(a,b,c)


puts test_numbers.hyp
puts test_numbers.twologs
puts test_numbers.added_cos
puts test_numbers.added_cube_roots
puts test_numbers.run_calculator
