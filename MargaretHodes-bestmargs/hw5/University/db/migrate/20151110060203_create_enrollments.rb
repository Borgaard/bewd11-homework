class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.student_id :integer
      t.course_id :integer
      t.student :string
      t.course :string

      t.timestamps null: false
    end
  end
end
