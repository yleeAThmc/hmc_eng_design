class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :type
      t.text :content
      t.references :survey, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
