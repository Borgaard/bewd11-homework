class Book < ActiveRecord::Base
    
    validates :release_date,
        presence: { message: "New entry needs release date" }
        
    validates :title,
        presence: { message: "New entry needs in Tilte" }
        
    validates :title,    
        uniqueness: { message: "The Title already exists!" }
    
end
