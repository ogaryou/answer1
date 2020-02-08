class QuestionsController < ApplicationController

  def index
  end  
  def new
    @question = Question.new
    @response = Response.new
  end  

  def create
    binding.pry
  end  

  private
  def question_params
    params.require(:question).permit(:body)
  end  

  def response_params
    params.require(:response).permit(:body)
  end  

end
