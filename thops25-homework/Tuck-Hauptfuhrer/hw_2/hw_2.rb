puts "Find the length of strings in an array"

def length_finder(input_array)
  array_length=[]
  input_array.each do |i| 
    array_length.push(i.length)
  end  
  return array_length
end

puts "Find the frequency of a string in a sentence"

def find_frequency(sentence, word)
  word_downcase = word.downcase
  sentence_words=[]
  sentence_words = sentence.split()
  c = []
  sentence_words.each {|i| c.push(i.downcase)} 
  b = c.count(word_downcase)    
  return b
end

puts "Select random elements from an array"

def random_select(array, n)
  a = []
  b = array.length - 1
  i = 0
  while i < n
    c = rand(b)
    a.push(array[c])
    i = i + 1
  end
  return a
end

puts "Find non-duplicate values in an array"

sort this

puts "Check if all elements in an array are Fixnum"