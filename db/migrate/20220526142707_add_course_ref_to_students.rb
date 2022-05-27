class AddCourseRefToStudents < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :course, null: false, foreign_key: true
  end
end
