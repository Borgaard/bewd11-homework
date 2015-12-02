class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.name :string
      t.length :string
      t.difficulty :string

      t.timestamps null: false
    end
  end
end
