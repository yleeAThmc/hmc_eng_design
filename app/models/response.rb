class Response < ActiveRecord::Base
  belongs_to :survey
  belongs_to :take_survey
  belongs_to :response
  belongs_to :user
  
  def question
    question_content = ""
    if self.question_id != nil
      q_id = self.question_id
      q = Question.find(q_id)
      question_content = q.content
    end
    return question_content
  end
 
end
