

puts "Problem: select random elements in an array:"

def random_select(array, n)
  random_array = []
  length = array.length
  for i in 1..n
    random_array << array[rand(length)]
  end
  return random_array
end

test_array = [245, 113, 100064, 5, 3, 23]

puts "This is the test array: #{test_array}"

puts "This is the output when random_select is called with n=2 and n=3: "

p random_select(test_array,2)

p random_select(test_array,3)

puts
