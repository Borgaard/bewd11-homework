require "./HW_3_module"


user_names = ["Bob Jones", "Cindy Smith", "Kelsey Scott"]

user_emails = ["bob@gmail.com", "csmith@yahoo.com", "kscott@hotmail.com"]


puts "Practice using modules to create name and email array"

def user_data(user_names, user_emails)
    merged_data = UserData.merge_data(user_names, user_emails)  
    all_users = UserData.create_hashes(merged_data, 'name', 'email')
    p all_users
end        
        

user_data(user_names, user_emails)








    





