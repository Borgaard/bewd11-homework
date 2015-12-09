user_names = ["Bob Jones", "Cindy Smith", "Kelsey Scott"]

user_emails = ["bob@gmail.com", "csmith@yahoo.com", "kscott@hotmail.com"]

p user_names
p user_emails
puts "Let's put them together"
user_matrix = []

#Loop over the anames
user_names.each { |name|
    names = []
    names = name.split(" ") #split first and last names
#Loop over the emails    
    user_emails.each { |email|
#Check if first name included in email    
        if email.downcase.include? names[0].downcase 
            user = []
# Create the unique user array            
            user.push(name)
            user.push(email)
# Push user array into multi dimentional user_matrix array            
            user_matrix.push(user)
        end
# Check if last name included in email          
         if email.downcase.include? names[1].downcase
            user = []
# Create the unique user array             
            user.push(name)
            user.push(email)
# Push user array into multi dimentional user_matrix array             
            user_matrix.push(user) 
        end
    }
}

# Check if matrix correctly built
p user_matrix

