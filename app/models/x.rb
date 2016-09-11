class X
  belongs_to :question
  belongs_to :user
  def initialize(responses)
    @responses = responses
  end
  
  def update_response(user_id)
    @responses.each do |response|
      response.update_attributes(user_id: user_id)
      puts '$$$$$$'
      puts response
      puts response.save
    end
  end
end