class Question < ActiveRecord::Base
  enum type: [:long_text, :multiple_choice, :short_text, :text]
  belongs_to :survey
end
