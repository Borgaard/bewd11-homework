class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.date :release_date
      t.string :image

      t.timestamps
    end
  end
end
