class InvitesController < ApplicationController
  
  def new
    @invite = Invite.new
  end
  
  def edit
    @invite = Invite.find(params[:i])
  end
  
  def show
    @invite = Invite.
  end
end
