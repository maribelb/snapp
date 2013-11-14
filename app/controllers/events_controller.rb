class EventsController < ApplicationController
	def new
		@event = Event.new
	end
	
	def create
		@event = Event.new(params[:event].permit(:file))
		@event.save
	end
		
	def destroy
		@event = Event.find(params[:id])
		@event.destroy
	end
	
	def edit
		@event = Event.find(params[:id])
	end
	
	def update
		@event = Event.find(params[:id])
		@event.update(params[:event].permit(:file))
	end
	
	def show
		@event = Event.find(params[:id])
	end
	
	def index
		@event = Event.all
	end
	

	
end


