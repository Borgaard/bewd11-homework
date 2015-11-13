class StoresBooks < ActiveRecord::Migration
  def self.up
    create_table :stores_books, :id => false do |t|
        t.integer :store_id
        t.integer :book_id
    end
  
    add_index :stores_books, [:store_id, :book_id]
    end
  
    def self.down
        drop_table :stores_books
    end
end
