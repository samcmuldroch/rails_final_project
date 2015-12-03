class RemindersController < ApplicationController
  def new
    @reminder = Reminder.new
  end

  def create
    # @reminder = Reminder.new(text: params[:text], location: params[:location], category: params[:category], time: params[:time]) 
    @reminder = Reminder.new(params.require(:reminder).permit(:text, :location, :category, :time)) 
    if @reminder.save
    	current_user.reminders.push(@reminder)
    	flash[:success] = "Now you won't forget this event!"
    	redirect_to root_url
    else 
    	flash[:danger] = "Sorry, unable to add reminder. Please try again and fill out the form correctly."
    	render 'new'
  	end
	end
end
