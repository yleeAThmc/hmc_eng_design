class QuestionsController < ApplicationController
  # GET /surveys/new
  def new
    @question = Question.new
  end


end
