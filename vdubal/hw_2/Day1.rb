# Array Length Finder 



def length_finder(input_array)
  for value in input_array
    puts "The length of #{value} is  #{value.length}"
  end
end 


def find_frequency(sentence, word)
  puts sentence.split.count(word)
end



def random_select(array, n)
  new_array = []
  a = array.length - 1
  for i in 0...n
    new_array << array[rand(a)]
  end
  puts new_array
end


def non_duplicated_values(values)
  values.each do |el|
    if values.count(el) == 1
    puts el
    end
  end
end


def is_Fixnum(values)
  counter = 0
  values.each do |el|
    if el.class.to_s != "Fixnum"
        counter += 1
    end
  end    
  if counter == 0
      puts "The array is Fixnums"
  else 
      puts "The array is not Fixnums"
  end
end



puts "Finds length of a string in an array: \n" 
length_finder(["hoho", "hihi", "huh"])


puts "Finds frequency of word: \n"
find_frequency('ha ha ha hohuha ha ha ho', 'ha')



puts "Prints out two random elements from an array: \n" 
random_select(['Peter', 'Milk', 'Cow', 'Blue', 'Red'], 2)


puts "Prints out non-duplicate values in an array: \n" 
dup_array = ['Peter', 'Milk', 'Cow', 'Blue', 'Cow', 'Peter', 'Blue', 'Red']
non_duplicated_values(dup_array)


puts "Prints out whether a number is Fixnum: \n" 
arrayFixnum = [1,3,5,6]
arrayFixnum2 = [1,3,5.2,6]
arrayFixnum3 = ["hello","go","haha",6]
is_Fixnum(arrayFixnum)
is_Fixnum(arrayFixnum2)
is_Fixnum(arrayFixnum3)


