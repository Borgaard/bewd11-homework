user_names = ["Kelsey Scott", "Bob Jones", "Cindy Smith"]

user_emails = ["csmith@yahoo.com", "bob@gmail.com", "kscott@hotmail.com"]
puts " "
puts "Original input:"
p user_names
p user_emails
puts " "
puts "Let's put them together fast into an array of arrays"
puts "Faster solution but does not check names vs emails"
array = user_names.to_a.sort.zip(user_emails.to_a.sort)
p array
puts " "
puts "Into an array of hashes"
hash = array.map { |subarray| Hash[*subarray] }
p hash