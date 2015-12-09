class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.datetime :release_date
      t.string :image_url

      t.timestamps null: false
    end
  end
end
