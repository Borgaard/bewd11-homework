class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :imgScr
      t.string :title
      t.string :author
      t.string :releaseDate

      t.timestamps null: false
    end
  end
end
