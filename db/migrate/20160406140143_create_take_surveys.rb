class CreateTakeSurveys < ActiveRecord::Migration
  def change
    create_table :take_surveys do |t|

      t.timestamps null: false
    end
  end
end
