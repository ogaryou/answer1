class QuestionsController < ApplicationController

  def index
  end  
  def new
    @question = Question.new
    @response = Response.new
  end  

  def create
  end  
end  