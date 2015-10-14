
class Calculator
    
  def initialize
    puts "Please enter two integers."
    @num1 = gets.to_i
    @num2 = gets.to_i
  end

  def sum
    puts "The sum is #{@num1 + @num2}."
  end
  
  def difference
    puts "The difference between the numbers is #{[@num1,@num2].max - [@num1,@num2].min}."
  end
  
  def product
    puts "The product of #{@num1} and #{@num2} is #{@num1 * @num2}."
  end
  
  def modulo_division
    puts "#{@num1} modulo #{@num2} is #{@num1 % @num2}."
  end
  
  def circumferences
    puts "Circles with radii of #{@num1} and #{@num2} would have circumferences of #{2 * Math::PI.round(2) * @num1} and #{2 * Math::PI.round(2) * @num2}."
  end
  
end

a_calc = Calculator.new
a_calc.sum
a_calc.difference
a_calc.product
a_calc.modulo_division
a_calc.circumferences