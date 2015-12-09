class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :city
      t.string :street
      t.string :type
      t.integer :book_id

      t.timestamps null: false
    end
  end
end
