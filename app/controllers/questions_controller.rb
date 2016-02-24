class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /surveys/new
  def new
    @question = Question.new
  end
end
