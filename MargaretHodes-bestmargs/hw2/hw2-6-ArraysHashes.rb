user_names = ["Bob Jones", "Cindy Smith", "Kelsey Scott"]

user_emails = ["bob@gmail.com", "csmith@yahoo.com", "kscott@hotmail.com"]

#### Array of Arrays: Approach 1 usingIterator

user_array1 = []

user_names.each do |data|
    user_array1 << [data, user_emails[user_names.index(data)]]
end

puts "Approach 1: "
p user_array1

#### Array of Arrays: Approach 2 using For Loop

user_array2 = []

for i in 0...user_names.length
    user_array2[i] = [user_names[i], user_emails[i]]
end

puts "Approach 2: "
p user_array2

#### Array of hashes ####

user_array_hash = []

for i in 0...user_names.length
   user_array_hash << {:name => user_names[i], :email => user_emails[i] }
    end

puts "Approach 3: "
p user_array_hash

# p user_array_hash[1]
# p user_array_hash[1].keys
# p user_array_hash[1].class
# p user_array_hash[1].values
