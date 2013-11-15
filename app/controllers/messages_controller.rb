class MessagesController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :edit, :create, :update, :destroy]
  
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.user = current_user

    if @message.save
      redirect_to @message
    else
      render 'new'
    end
  end

  def inbox
    @messages = Message.all
  end
  
  def show
    @message = Message.find(params[:id])
  end
  
  def edit
    @message = Message.find(params[:id])
  end
  
  def update
    @message = Message.find(params[:id])

    if @message.update(message_params)
      redirect_to @message
    else
      render 'edit'
    end
  end
  
  def index
    @messages = Message.order("created_at desc").limit(15)
  end
  
  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to messages_path
  end
  
  private
    def message_params
      params.require(:message).permit(:subject, :text)
    end
end