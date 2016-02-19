class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title
      t.text :description
      t.belongs_to :assigner, index: true
      t.timestamps null: false
    end
  end
end
