class TakeSurvey < ActiveRecord::Base
  # belongs_to :assigner, :class_name => 'User', :foreign_key => 'assigner_id'
  # has_and_belongs_to_many :assignee, :class_name => 'User', :join_table => 'surveys_and_assignees'

  belongs_to :survey
  belongs_to :user

  has_many :responses
  accepts_nested_attributes_for :responses, reject_if: :all_blank, allow_destroy: true
end
