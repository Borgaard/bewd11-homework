def random_select(array, n)
  random_number = []
  n.times do
    random_number << array[rand(array.length)]
  end
  
  random_number
end