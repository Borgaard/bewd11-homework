class Car
    def drive
        puts "We are driving!"
    end   
    
    def initialize(color,make,model,year)
        @color = color
        @make = make
        @model = model
        @year = year
    end
    
    def describe_car
        puts "We are driving a #{@color} #{@make} #{@model} from the year #{@year}"
    end    
end

myCar = Car.new("Red","Honda","Civic",2004)

myCar.drive
myCar.describe_car

