class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :length
      t.string :difficulty

      t.timestamps null: false
    end
  end
end
