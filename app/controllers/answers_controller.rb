class AnswersController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    

    if @answer.save
      redirect_to @answer
    else
      render 'new'
    end
  end
  
  def show
    @answer = Answer.find(params[:id])
  end
  
  def edit
    @answer = Answer.find(params[:id])
  end
  
  def update
    @answer = Answer.find(params[:id])

    if @answer.update(answer_params)
      redirect_to @answer
    else
      render 'edit'
    end
  end
  
  def index
    @answer = Answer.order("created_at desc").limit(10)
  end
  
  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to answers_path
  end
  
  private
    def answer_params
      params.require(:answer).permit(:text, :value)
    end
end