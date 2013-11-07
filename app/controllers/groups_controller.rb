class GroupsController < ApplicationController
  
  def new
    @group = Group.new
  end
  
  def create
    @group = Group.new(params[:group].permit(:title))
    @group.save
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    @group.update(params[:group].permit(:title))
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
  end

  def index
    @group = Group.all
  end

  def show
    @group= Group.find(params[:id])
  end
  
end
