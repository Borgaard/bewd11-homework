user_names = ["Bob Jones", "Cindy Smith", "Kelsey Scott"]

user_emails = ["bob@gmail.com", "csmith@yahoo.com", "kscott@hotmail.com"]


# METHOD 1 using a for loop
arr1 = []

for index in 0...user_names.length
	arr1 << [user_names[index], user_emails[index]]	
end

p arr1

# METHOD 2 using map.with_index

users = user_names.map.with_index do |string, index|
	[string, user_emails[index]]
end

p users

# Array of hashes

users_api = user_names.map.with_index do | name, index | 
	{
		name: name, 
		email: user_emails[index]
	}
end

p users_api