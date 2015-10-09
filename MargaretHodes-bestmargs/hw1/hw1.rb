class Calculator

    def initialize

        puts "Please enter your first integer:"

        @input_num1 = gets.chomp.to_i

        puts "Please enter your second integer:"

        @input_num2 = gets.chomp.to_i

    end

    def logger

        logged = Math.log(@input_num1, @input_num2)

        puts "Log #{@input_num1} base #{@input_num2} equals #{@logged}!"

    end

end



HomeworkCalc = Calculator.new



HomeworkCalc.logger

