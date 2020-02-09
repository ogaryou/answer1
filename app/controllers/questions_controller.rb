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
    Question.create(question_params)
    Response.create(response_params)
  end  

  private
  def question_params
    params.require(:question).permit(:body)
  end  
  def response_params
    params.require(:response).permit(:body)
  end  
end
