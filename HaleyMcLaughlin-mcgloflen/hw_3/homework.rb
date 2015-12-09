user_names = ["Bob Jones", "Cindy Smith", "Kelsey Scott"]

user_emails = ["bob@gmail.com", "csmith@yahoo.com", "kscott@hotmail.com"]


user_info = []

user_names.each do |a|
    user_info << [user_names[a], user_emails[a]]
end

p user_info


user_data = []

until i >= user_names.length do
    user_data << [user_names[i], user_emails[i]]
    i += 1
end

p user_data


user_data_hashes = []

for j in 0...user_names.length
    user_data_hashes << { name: user_names[j], email: user_emails[j] }
end

p user_data_hashes