class CreateTakeSurveys < ActiveRecord::Migration
  def change
    create_table :take_surveys do |t|
      t.references :survey, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true      
      
      t.timestamps null: false
    end
  end
end
