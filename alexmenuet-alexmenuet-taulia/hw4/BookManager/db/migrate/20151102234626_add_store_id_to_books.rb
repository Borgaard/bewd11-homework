class AddStoreIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :store_id, :integer
  end
end
