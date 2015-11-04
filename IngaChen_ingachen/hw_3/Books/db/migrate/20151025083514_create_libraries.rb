class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :title
      t.string :author
      t.date :release_date
      t.string :image

      t.timestamps
    end
  end
end
