class CreateStudentGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :student_groups do |t|

      t.timestamps
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true
    end
  end
end
