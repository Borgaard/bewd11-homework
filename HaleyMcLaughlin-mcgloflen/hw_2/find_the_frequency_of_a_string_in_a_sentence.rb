def find_frequency(sentence, word)
  down = sentence.downcase
  thing = down.split(' ')
  thing.count(word)
end