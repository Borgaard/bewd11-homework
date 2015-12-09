puts "Problem: Find the length of strings in an array"

def length_finder(input_array)
  output_array = []
  input_array.select do |el|
    output_array << el.length
    end
  return output_array
end

test_array = ['Ruby', 'Rails', 'C42']

puts

puts "This is the test array: #{test_array}"

puts "This is the output: #{length_finder(test_array)}" 

puts

