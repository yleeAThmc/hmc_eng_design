class Survey < ActiveRecord::Base
  belongs_to :assigner, :class_name => 'User', :foreign_key => 'assigner_id'
  has_and_belongs_to_many :assignee, :class_name => 'User', :join_table => 'surveys_and_assignees'

  has_many :take_surveys
  has_many :questions
  accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true
end
