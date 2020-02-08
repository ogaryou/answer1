class ResponsesController < ApplicationController
  def new
    @response = Response.new
  end  

  def create
  end
  
  private
  def response_params
    params.require(:response).permit(:response)
  end  

  
end  