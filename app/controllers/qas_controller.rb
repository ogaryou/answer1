class QasController < ApplicationController

  def index
    gon.qas = Qa.all
    if params[:count] == nil
      qas = Qa.all
      @sample = qas.sample(50) 
      @count = 0

      gon.sample = @sample
      gon.count = @count
    else  
      sample = params[:sample]
      count = params[:count]
      qas = Qa.all
      sample_array = []
      sample.each {|key, value|
        sample_id = value[:id]
        sample_array << qas.find(sample_id)
      }
      @sample = sample_array
      @count = count.to_i
    end 

  end  
  def new
    @qa = Qa.new
  end  

  def create
    Qa.create(qa_params)
    flash[:notice] = "問題を作成しました"
    redirect_to new_qa_path
  end  
  def question

  end  

  def show
  end  

  def destroy
    qa = Qa.find(params[:id])
    qa.delete
  end  

  def update

  end  

  private
  def qa_params
    params.require(:qa).permit(:body, :content, :id, :name, :checkbox,ingredients:[])
  end  


end
