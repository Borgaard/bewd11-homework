    puts "Find the length of strings in an array"
    
# Version 1
    def length_finder(input_array)
      input_array.map! {|i| i.length}
    end
    
#version 2
    def length_finder(input_array)
      destination = []
      input_array.each do |i|
        destination << i.length
      end
      p destination
    end
        
    puts "Find the frequency of a string in a sentence"
    
#version 1
    def find_frequency(sentence, word)
      arr = sentence.upcase.split
      word_count = arr.count(word.upcase)
      #this should works I think just rubyMonk doesn't want fancy.
      #puts "#{sentence}: has #{word_count} "#{word}"'s in it."
    end
    
    puts "Select random elements from an array"
    
#version 1
    def random_select(array, n)
      array.shuffle.sample(n)
    end
    
    
    
    Puts "Find non-duplicate values in an Array"
    
#version  1 
    def non_duplicated_values(values)
      values.delete_if { |i| values.count(i) > 1}
    end
    
    
    puts "Check if all elements in an array are Fixnum"
    
#version 1
    def array_of_fixnums?(array)
      array.all? { |item| item.is_a?(Fixnum)}
    end
    
    
    
    puts "Bonus: Sort the words in a given sentence"
    
#version 1
    def sort_string(string)
      string.split.sort_by{|i| i.length}.join(" ")
    end