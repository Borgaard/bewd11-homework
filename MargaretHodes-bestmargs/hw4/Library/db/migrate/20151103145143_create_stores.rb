class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :store_name
      t.string :address
      t.string :store_url

      t.timestamps null: false
    end
  end
end
