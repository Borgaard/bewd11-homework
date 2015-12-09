class AddBookIdToStores < ActiveRecord::Migration
  def change
    add_column :stores, :book_id, :integer
  end
end
