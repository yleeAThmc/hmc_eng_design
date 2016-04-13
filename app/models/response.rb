class Response < ActiveRecord::Base
  belongs_to :take_survey
  belongs_to :user
 
end
