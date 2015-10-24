require './helper'

# Start with

user_names = ["Bob Jones", "Cindy Smith", "Kelsey Scott"]
user_emails = ["bob@gmail.com", "csmith@yahoo.com", "kscott@hotmail.com"]

# Intermediate goal
[
    ["Bob Jones", "bob@gmail.com"],
    ["Cindy Smith", "csmith@yahoo.com"],
    ["Kelsey Scott", "kscott@hotmail.com"]
]
# Get there with a loop

def loop_approach(names,emails)
  i = 0
  merged_array=[]
  for i in 0..names.length-1 do
    merged_array[i] = [names[i],emails[i]]
    i += 1
  end
  return merged_array
end

# p "Loop approach:"
# p loop_approach(user_names,user_emails)

# Get there with an iterator

def iterator_approach(names,emails)
  merged_array = []
  names.each_with_index do |name,i| 
    merged_array[i] = [names[i],emails[i]]
  end
  return merged_array
end

# p "Iterator approach:"
# p iterator_approach(user_names,user_emails)

#Now merge into an array of hashes, using (bonus) module's helper method

def array_of_hashes(names, emails)
  results = Array.new
  Helper.merge_arrays(names,emails).each do |entry|
    results << { name: entry[0], email: entry[1] }
  end
  return results
end

p "Array of hashes:"
p array_of_hashes(user_names,user_emails)

