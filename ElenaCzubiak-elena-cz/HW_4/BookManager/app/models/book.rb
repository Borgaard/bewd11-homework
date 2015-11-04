class Book < ActiveRecord::Base
    
    has_many :stores
    
    validates :title,
        presence: true
        
    validates :author,
        presence: true
        
    validates :date,
        presence: true    
        
end
