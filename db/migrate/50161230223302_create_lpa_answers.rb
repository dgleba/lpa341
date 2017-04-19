class CreateLpaAnswers < ActiveRecord::Migration
  def change
    create_table :lpa_answers do |t|
      t.text :body
      t.references :user, index: true, foreign_key: true
      t.references :question, index: true, foreign_key: true
      t.text :issue_description
      t.text :action_taken

      t.timestamps null: false
    end
  end
end
