class QasController < ApplicationController

  def index
    @qa = Qa.all
  end  
  def new
    @qa = Qa.new
  end  

  def create
    Qa.create(qa_params)
  end  

  def show
  end  

  def destroy
    qa = Qa.find(params[:id])
    qa.delete
  end  

  private
  def qa_params
    params.require(:qa).permit(:body, :content, :id)
  end  
end
