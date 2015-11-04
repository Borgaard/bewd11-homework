class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :storename
      t.string :storeaddress

      t.timestamps
    end
  end
end
