# Find the frequency of a string in a sentence

def find_frequency(sentence, word)
  sentence.downcase.split(' ').count(word)
end