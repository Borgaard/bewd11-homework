def merge_arrays (array1, array2)
    users = []
    for i in  0...array1.length do
        user_entry = []
        user_entry[0] = array1[i] 
        user_entry[1] = array2[i] 
        users << user_entry  
    end
    return users 
end 



def merge_arrays2 (array1, array2) # USES DO 
    users = []
    array1.each_with_index do |value, index|
        user_entry = []
        #user_entry[0] = value 
        user_entry[0] = array1[index]
        user_entry[1] = array2[index] # could do user_entry = [value, array2[index]
        users << user_entry  
    end
    return users 
end 




def create_hash_array (input_array)
    users = []
    for i in  0...input_array.length do
        new_hash = {
            name: input_array[i][0], 
            email: input_array[i][1]
        }
        users << new_hash   
    end
    return users 
end 


def create_hash_array2 (input_array) # USES DO 
    users = []
    input_array.each_with_index do |value, index|
        new_hash = {
            name: input_array[index][0], 
            email: input_array[index][1]
        }
        users << new_hash   
    end
    return users 
end 




puts "\nExercise 1a: \n"
user_names = ["Bob Jones", "Cindy Smith", "Kelsey Scott"]
user_emails = ["bob@gmail.com", "csmith@yahoo.com", "kscott@hotmail.com"]

new_array = merge_arrays(user_names, user_emails)
p new_array


puts "\nExercise 1b: \n"
new_array2 = merge_arrays2(user_names, user_emails)
p new_array2





puts "\n\nExercise 2a: \n"
array_with_hash = create_hash_array(new_array) 
p array_with_hash 

puts "\n\nExercise 2b: \n"
array_with_hash2 = create_hash_array2(new_array) 
p array_with_hash2 


puts "\nQuestion: The above gives me the format :name => value, as opposed to name: value. Why is that?" 

=begin 
user_data =[]
i = 0 

until i >= user_names.length do
    user_data << [user_names[i], user_emails[i]]
    i += i
end
=end

