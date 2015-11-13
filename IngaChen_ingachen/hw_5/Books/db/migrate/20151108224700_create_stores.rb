class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.belongs_to :book
      t.string :store_name
      t.string :store_city

      t.timestamps
    end
  end
end
