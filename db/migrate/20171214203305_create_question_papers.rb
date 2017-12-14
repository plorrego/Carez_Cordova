class CreateQuestionPapers < ActiveRecord::Migration[5.1]
  def change
    create_table :question_papers do |t|

      t.timestamps
      t.references :question, foreign_key: true
      t.references :paper, foreign_key: true
    end
  end
end
