#Length of strings in an array. 
def length_finder(input_array)
  input_array.map do |string_length| string_length.length
  end 
end 

puts length_finder(["dogs", "chickens", "moo"])

#Frequency of string in a sentence. 
def find_frequency(sentence, word)
  array = sentence.downcase.split(" ")
  array.count(word)
end

puts find_frequency("How many words are many words?", "many")

#Select random elements from array.
def random_select(array, n)
  answer = []
  x = 0
  while x < n
    answer << array[rand(array.length)]
    x += 1 
  end
  puts answer
end

random_select([4, 3, 2, 1, 35, 36, 37,], 3)

#Check if elements in array are fixnum.
def array_of_fixnums?(array)
  array.all? { |x| x.is_a? Integer } 
end

puts array_of_fixnums?([0, "glass", 1])
puts array_of_fixnums?([3, 4, 5])

#Find non duplicate array values.
def non_duplicated_values(values)
    values.select{|item| values.count(item) == 1}.uniq
end

puts non_duplicated_values([5, 2, 2, 3, 3, 4])

#Sort the words in a given sentence. 
def sort_string(string)
  words = string.split
  words = words.sort_by{|x| x.length} 
  return words.join(" ")
end

puts sort_string("crickets two lonely")