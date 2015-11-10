class Book < ActiveRecord::Base
    has_and_belongs_to_many :stores, :join_table => :joined_tables
    
    validates :release_date,
        presence: { message: "New entry needs release date" }
        
    validates :title,
        presence: { message: "New entry needs in Tilte" }
        
    validates :title,    
        uniqueness: { message: "The Title already exists!" }
    
end
