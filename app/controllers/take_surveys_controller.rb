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
    @takeSurvey = TakeSurvey.new(take_survey_params)
    @takeSurvey.user = current_user
    respond_to do |format|
      if @takeSurvey.save
        format.html { redirect_to surveys_path, notice: 'Survey was successfully submitted.' }
        format.json { render :show, status: :created, location: survey }
      else
        format.html { render :new }
        format.json { render json: @takeSurvey.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def take_survey_params
      params[:take_survey]
      .permit(:survey_id, :user_id,
              responses_attributes: [:content, :survey_id, :question_id, :user_id, :_destroy]
      )
    end
end
