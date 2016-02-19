class CreateSurveysAndAssignees < ActiveRecord::Migration
  def change
    create_table :surveys_and_assignees, id: false do |t|
      t.belongs_to :assignee, :class_name => 'User', index: true
      t.belongs_to :survey, index: true
    end
  end
end
