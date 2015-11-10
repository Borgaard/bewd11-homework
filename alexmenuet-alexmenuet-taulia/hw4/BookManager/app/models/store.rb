class Store < ActiveRecord::Base
    has_and_belongs_to_many :books, :join_table => :joined_tables
end
