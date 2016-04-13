class TakeSurveysController < ApplicationController
  before_action :set_take_survey, only: [:show, :edit, :update, :destroy]
  def new
    @survey = Survey.find(params[:survey_id])
    @takeSurvey = TakeSurvey.new
    @takeSurvey.responses.build
  end
  
  # POST /surveys
  # POST /surveys.json
  def create
    @survey = TakeSurvey.new(survey_params)
    @survey.assigner = current_user
    respond_to do |format|
      if @survey.save
        format.html { redirect_to @survey, notice: 'Survey was successfully created.' }
        format.json { render :show, status: :created, location: @survey }
      else
        format.html { render :new }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end
      
end
