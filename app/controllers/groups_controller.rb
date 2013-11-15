class GroupsController < ApplicationController
  
  def new
    @group = Group.new
  end
  
  def create
    @group = Group.new(params[:group].permit(:name, :description, :website))
    if @group.save
      redirect_to @group
    else
      render 'new'
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(params[:group].permit(:name,:description))
      redirect_to @group
    else
      render 'edit'
    end
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
  
	private
		def group_params
			params.require(:group).permit(:name, :description)
		end
  
  
end
