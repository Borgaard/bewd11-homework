class Book < ActiveRecord::Base

	has_many :stores
	
	validates :title,
		presence: true,
		uniqueness: true

end
