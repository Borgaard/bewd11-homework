# Find the length of strings in an array

def length_finder(input_array)
  lengths=[]
  input_array.each do |item| 
    if item.is_a? String
      lengths << item.length
    end
  end
  lengths
end

# Find the frequency of a string in a sentence

def find_frequency(sentence, word)
  s = sentence.downcase.split(" ")
  w = word.downcase
  s.count(w)
end

# Select random elements from an array

def random_select(array, n)
  n.times do
    puts array[rand(array.length-1)]
  end
end

## This works here, but it doesn't pass Ruby Monk's tests. I'm not sure why.  
# array = [1,2,3,4,5]
# random_select(array, 5)

# Find non-duplicate values in an array

def non_duplicated_values(values)
  values.delete_if { |a| values.count(a) > 1 }
end

# Check if all elements in an array are Fixnum

def array_of_fixnums?(array)
  array = array.delete_if { |el| el.is_a? Fixnum }
  array.empty?
end

# Bonus: Try the "sort the words in a given sentence" challenge.

def sort_string(string)
  words = string.split(" ")
  words.sort! { |a,b| a.length <=> b.length }
  words.join(" ")
end