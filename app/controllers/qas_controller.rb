class QasController < ApplicationController

  def index
    @qa = Qa.order("RAND()").limit(1)
  end  
  def new
    @qa = Qa.new
  end  

  def create
    Qa.create(qa_params)
    redirect_to qas_path
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
