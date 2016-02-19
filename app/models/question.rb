class Question < ActiveRecord::Base
  enum type: [:long_text, :multiple_choice, :short_text, :text]
  belongs_to :survey, :class_name => 'Survey', :foreign_key => 'survey_id'
end
