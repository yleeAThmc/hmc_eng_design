class EvaluateSurvey < ActiveRecord::Base
  belongs_to :survey
  belongs_to :user

  has_many :evaluations
  accepts_nested_attributes_for :evaluations, reject_if: :all_blank, allow_destroy: true
end
