class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :release_date
      t.string :image

      t.timestamps null: false
    end
  end
end
