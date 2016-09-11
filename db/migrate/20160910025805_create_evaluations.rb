class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.references :evaluate_survey, index: true, foreign_key: true
      t.references :response, index: true, foreign_key: true
      t.integer :quality
      t.integer :tone

      t.timestamps null: false
    end
  end
end
