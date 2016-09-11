class Evaluation < ActiveRecord::Base
  belongs_to :evaluate_survey
  belongs_to :response
end
