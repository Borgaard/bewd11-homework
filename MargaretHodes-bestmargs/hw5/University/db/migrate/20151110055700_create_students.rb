class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.name :string
      t.email :string
      t.age :string

      t.timestamps null: false
    end
  end
end
