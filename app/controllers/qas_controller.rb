class QasController < ApplicationController

  def index
    # @qa = current_user.qas.all
    # qas = current_user.qas.all
    
    gon.qas = Qa.all
    gon.user = current_user.id

    if params[:count] == nil
      qas = current_user.qas.all
      
      @sample = qas.sample(50)
      @count = 0

      gon.sample = @sample

      gon.count = @count
    else  
      sample = params[:sample]
      count = params[:count]
      qas = current_user.qas.all
      sample_array = []
      sample.each {|key, value|
        sample_id = value[:id]
        sample_array << qas.find(sample_id)
      }
      @sample = sample_array
      @count = count.to_i
    end 
    if @sample.blank?
      flash[:notice] = "問題を作成してください"
      redirect_to new_qa_path
    end  
  end  
  def new
    @qa = Qa.new
  end  

  def create
    @qa = Qa.new(qa_params)
    if @qa.save
      flash[:notice] = "作成しました"
      redirect_to action: :new
    else
      render "new"
    end  
  end  
  def question

  end  

  def show
  
  end  

  def edit
    gon.url = Qa.find(params[:id])
    @qa = Qa.find(params[:id])
    
    
    

  end  

  def update
    qa = Qa.find(params[:id])
    qa.update(qa_params) 
    redirect_back(fallback_location: qa_path)
  end  

  def destroy

  end  



  private
  def qa_params
    params.require(:qa).permit(:body, :content,  :name).merge(user_id: current_user.id)
  end  


end
