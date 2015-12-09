
puts "Find the length of strings in an array"

def length_finder(input_array)
  length_array = []
  input_array.each { |word| length_array << word.length }
  return length_array
end

