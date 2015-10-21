require "./Module/name_check"
require "./Module/subhash"
require "./Module/name_split"
user_names = ["Cindy Smith", "Kelsey Scott","Bob Jones"]

user_emails = ["kscott@hotmail.com", "bob@gmail.com", "csmith@yahoo.com"]

p user_names
p user_emails
puts "Let's put them together"
user_matrix = []

#Sort and update user_names
user_names.sort!
#Loop over the names
user_names.each { |name|
    names = Name_split.splt(name)
#Loop over the emails    
    user_emails.each { |email|
#Check if first name included in email    
        if Name_check.name_vs_email(names[0],email) == true 
            user = Subhash.create_subhash(name,email)
# Push user array into multi dimentional user_matrix array            
            user_matrix.push(user)
        end
# Check if last name included in email          
         if Name_check.name_vs_email(names[1],email) == true 
            user = Subhash.create_subhash(name,email)
# Push user array into multi dimentional user_matrix array             
            user_matrix.push(user)
        end
    }
}

# Check if matrix correctly built
p user_matrix