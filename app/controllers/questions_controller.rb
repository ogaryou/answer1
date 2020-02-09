class QuestionsController < ApplicationController

  def index
    @question = Question.all
    @response = Response.all
  end  
  def new
    @question = Question.new
    @response = Response.new
  end  

  def create
    @question = Question.new(question_params)
    @question.save
    @response = Response.new(response_params)
    @response.save
  end  

  private
  def question_params
    params.require(:question).permit(:body)
  end  
  def response_params
    params.require(:response).permit(:body)
  end  
end
