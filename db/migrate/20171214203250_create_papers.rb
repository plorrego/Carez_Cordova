class CreatePapers < ActiveRecord::Migration[5.1]
  def change
    create_table :papers do |t|

      t.timestamps
      t.references :user, foreign_key: true
    end
  end
end
