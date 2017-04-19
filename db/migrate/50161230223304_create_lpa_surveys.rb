class CreateLpaSurveys < ActiveRecord::Migration
  def change
    create_table :lpa_surveys do |t|
      t.string :title
      t.references :user, index: true, foreign_key: true
      t.integer :sort
      t.integer :active_status

      t.timestamps null: false
    end
  end
end
