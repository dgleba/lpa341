class CreateLpaQuestions < ActiveRecord::Migration
  def change
    create_table :lpa_questions do |t|
      t.string :title
      t.references :survey, index: true, foreign_key: true
      t.integer :question_type
      t.integer :sort
      t.integer :active_status

      t.timestamps null: false
    end
  end
end
