user_names = ["Bob Jones", "Cindy Smith", "Kelsey Scott"]

user_emails = ["bob@gmail.com", "csmith@yahoo.com", "kscott@hotmail.com"]

arr = []
arr2 = []

contact_info = {}

user_names.each_with_index do |name, index|
    arr<<[ name , user_emails[index] ]
end

#arr.map { |name,email| puts "#{name},#{email}"}

arr.each do |names,emails|
    contact_info.merge!({"Name: #{names}" => "email: #{emails}"})
    arr2.clear
    arr2 << contact_info
end

p arr2

=begin
contact_info.each do |key,email|
    puts "Username: #{key}"
    puts "Email: #{email}"
    #puts "User email #{contact_info[key].value}"
end
=end