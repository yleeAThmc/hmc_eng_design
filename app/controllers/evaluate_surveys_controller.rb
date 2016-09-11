class EvaluateSurveysController < ApplicationController
  def new
    @survey = Survey.find(params[:survey_id])
    @evaluateSurvey = EvaluateSurvey.new
    @evaluateSurvey.evaluations.build
  end
  
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluate_survey_params
      params[:evaluate_survey]
      
    end
end
