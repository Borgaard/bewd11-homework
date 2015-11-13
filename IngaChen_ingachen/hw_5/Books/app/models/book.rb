class Book < ActiveRecord::Base
	validates :title, 
		presence: true,
		uniqueness: true

	has_many :stores
end
