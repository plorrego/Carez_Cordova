class CreateStudentGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :student_groups do |t|

      t.timestamps
    end
  end
end
