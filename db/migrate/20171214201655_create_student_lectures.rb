class CreateStudentLectures < ActiveRecord::Migration[5.1]
  def change
    create_table :student_lectures do |t|

      t.timestamps
      t.references :user, foreign_key: true
      t.references :lecture, foreign_key: true
    end
  end
end
