user_names = ["Bob Jones", "Cindy Smith", "Kelsey Scott"]

user_emails = ["bob@gmail.com", "csmith@yahoo.com", "kscott@hotmail.com"]


puts "Here is an array of names and emails using an iterator:"

def user_data_each(user_names, user_emails)
    merged_data = []
    user_names.each_with_index do | str, index |
        merged_data << [user_names[index], user_emails[index]]
    end    
    p merged_data
end    

user_data_each(user_names, user_emails)

puts "Here is an array of names and emails using a FOR loop:"

def user_data_loop(user_names, user_emails)
    merged_data = []
    for i in 0...user_names.length
        merged_data << [user_names[i], user_emails[i]]
    end    
    p merged_data
end   

user_data_loop(user_names, user_emails)

puts "Here is an array of names and emails in individual hashes:"


def user_data(user_names, user_emails)
    merged_data = []
    all_users = []
    
    user_names.each_with_index do | str, index |
        merged_data << [user_names[index], user_emails[index]]
    end
    
    merged_data.each do |user|
        user_hash = {
            name: user[0],
            email: user[1]
        }
        all_users << user_hash
    end 
    
    p all_users
end        
        

user_data(user_names, user_emails)        
    
        

 
    
    





