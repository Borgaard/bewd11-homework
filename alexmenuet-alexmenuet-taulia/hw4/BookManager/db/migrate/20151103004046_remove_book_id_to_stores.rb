class RemoveBookIdToStores < ActiveRecord::Migration
  def change
    remove_column :stores, :book_id, :integer
  end
end
