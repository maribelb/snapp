class QuestionsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    

    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end
  
  def show
    @question = Question.find(params[:id])
  end
  
  def edit
    @question = Question.find(params[:id])
  end
  
  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      redirect_to @question
    else
      render 'edit'
    end
  end
  
  def index
    @questions = Question.order("created_at desc").limit(10)
  end
  
  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end
  
  private
    def question_params
      params.require(:question).permit(:subject, :text, :title, :id, :value)
    end
end