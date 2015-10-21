

puts "Problem: find non-duplicate values in an array:"

def non_duplicated_values(values)
  non_duplicate_values = []
  values.select do |el|
    if values.count(el)== 1
      non_duplicate_values << el
    end
  end
  return non_duplicate_values
end

test_array = [1, 3, 4, 2, 1, 5, 3, 3, 3]

puts "This is the test array: #{test_array}"

puts "This is the output when non_duplicated_values is called: #{non_duplicated_values(test_array)}" 

puts

