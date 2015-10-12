class Calculator

    def initialize

        puts "Please enter your first integer:"
        @input_num1 = gets.chomp.to_i
        puts "Please enter your second integer:"
        @input_num2 = gets.chomp.to_i

    end
    def logger
        @logged = Math.log(@input_num1, @input_num2)
        puts "Log #{@input_num1} base #{@input_num2} equals #{@logged}!"
    end
    def multiplier
        @product = @input_num1 * @input_num2
        puts "#{@input_num1} times #{@input_num2} equals #{@product}!"
    end
    def subtractor
        @result = @input_num1 - @input_num2
        puts "#{@input_num1} minus #{@input_num2} equals #{@result}!"
    end
    def divider
        @result =  @input_num1 /  @input_num2
        puts "#{@input_num1} divided by #{@input_num2} equals #{@result}!"
    end
        

end



HomeworkCalc = Calculator.new


HomeworkCalc.subtractor
HomeworkCalc.divider
HomeworkCalc.multiplier
HomeworkCalc.logger
