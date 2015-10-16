puts "Find the frequency of a string in a sentence"


def find_frequency(sentence, word)
  new_array = sentence.downcase.split(' ')
  new_array.count(word)
end
