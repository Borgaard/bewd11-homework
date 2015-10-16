puts "Select random elements from an array"

def random_select(array, n)
  random_nums = []
  n.times do 
    random_nums << array[rand(array.length)]
  end  
    return random_nums
end
