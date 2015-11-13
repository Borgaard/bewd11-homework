class CreateStoresBooks < ActiveRecord::Migration
  def change
    create_table :stores_books do |t|
      t.references :book, index: true, foreign_key: true
      t.references :store, index: true, foreign_key: true
    end
    add_foreign_key :stores_books, :books
    add_foreign_key :stores_books, :stores
  end
end
