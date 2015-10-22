module Name_check
    def self.name_vs_email(name, email)
        if email.downcase.include? name.downcase
           return true
       else
           return false
        end
    end
end