class RemoveStoreIdToBooks < ActiveRecord::Migration
  def change
    remove_column :books, :store_id, :integer
  end
end
