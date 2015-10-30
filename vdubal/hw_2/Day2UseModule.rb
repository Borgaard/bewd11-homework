require_relative "Day2Module"




puts "\nExercise 1a: \n"
user_names = ["Bob Jones", "Cindy Smith", "Kelsey Scott"]
user_emails = ["bob@gmail.com", "csmith@yahoo.com", "kscott@hotmail.com"]

new_array = Week2Day2.merge_arrays(user_names, user_emails)
p new_array


puts "\nExercise 1b: \n"
new_array2 = Week2Day2.merge_arrays2(user_names, user_emails)
p new_array2





puts "\n\nExercise 2a: \n"
array_with_hash = Week2Day2.create_hash_array(new_array) 
p array_with_hash 

puts "\n\nExercise 2b: \n"
array_with_hash2 = Week2Day2.create_hash_array2(new_array) 
p array_with_hash2 


puts "\nQuestion: The above gives me the format :name => value, as opposed to name: value. Why is that?" 
