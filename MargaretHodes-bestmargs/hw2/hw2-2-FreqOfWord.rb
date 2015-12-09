

puts "Problem: return frequency of word in a sentence:"

def find_frequency(sentence, word)
    sentence_array = sentence.downcase.split()
    return sentence_array.count(word.downcase)
end

@word = "do"

@sentence = "Do or do not let me go."

puts "The frequency of the word: \"#{@word},\" in the sentence: \"#{@sentence}\" is #{find_frequency(@sentence, @word)}" 

puts

