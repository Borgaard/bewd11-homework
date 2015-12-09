module Week2Day2

def merge_arrays.self (array1, array2)
    users = []
    for i in  0...array1.length do
        user_entry = []
        user_entry[0] = array1[i] 
        user_entry[1] = array2[i] 
        users << user_entry  
    end
    return users 
end 



def merge_arrays2.self (array1, array2) # USES DO 
    users = []
    array1.each_with_index do |value, index|
        user_entry = []
        #user_entry[0] = value 
        user_entry[0] = array1[index]
        user_entry[1] = array2[index] 
        users << user_entry  
    end
    return users 
end 




def create_hash_array.self (input_array)
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


def create_hash_array2.self (input_array) # USES DO 
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


end