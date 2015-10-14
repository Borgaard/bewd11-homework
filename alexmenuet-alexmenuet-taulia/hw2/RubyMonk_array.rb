"Find the length of strings in an array"
def length_finder(input_array)
  input_array.map { |element|
    element = element.length
    }
end


"Find the frequency of a string in a sentence"
def find_frequency(sentence, word)
  # words = []
  words = sentence.split(" ")
  words.map! { |element| element.downcase } 
  words.count(word.downcase)
end


"Select random elements from an array"
def random_select(array, n)
  result = []
  for i in 0...n
    result << array[rand(array.length)]
  end
  result
end


"Find non-duplicate values in an Array"
def non_duplicated_values(values)
  # Write your code here
  result = []
  values.each { |v|
    if values.count(v) == 1
      result.push(v)
    end
  }
  
    result
end

"Check if all elements in an array are Fixnum"
def array_of_fixnums?(array)
  array.all? { |num| num.is_a? Fixnum }
end

"Sort the words in a given sentence"
def sort_string(string)
  # your code here
  words = string.split(" ")
  words = words.sort {|x, y| x.length <=> y.length}
  #3result = words.reduce { |sentence, word|
  #sentence + " " + word
   # }
  #result
  result = words.join(" ") 
end