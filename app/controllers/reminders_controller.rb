class RemindersController < ApplicationController
  def new
    @reminder = Reminder.new
  end

  def create
    # @reminder = Reminder.new(text: params[:text], location: params[:location], category: params[:category], time: params[:time])
    ActionMailer::Base.delivery_method = :smtp
    ActionMailer::Base.smtp_settings = {
        address: "smtp.gmail.com",
        port: 587,
        domain: 'gmail.com',
        Authentication: "plain",
        enable_starttls_auto: true,
        user_name: 'rubyfinalproject@gmail.com',
        password: 'r1u2b3y4'
    }
    @reminder = Reminder.new(params.require(:reminder).permit(:text, :location, :category, :time))
    if @reminder.save
    	current_user.reminders.push(@reminder)
    	
        
        ActionMailer::Base.mail(from: "rubyfinalproject@gmail.com", to: current_user.email, subject: "New Reminder: " + @reminder.category, body: "Remember!\n" + "\nText: " + @reminder.text + "\nLocation: " + @reminder.location + "\nTime: " + @reminder.time.to_s).deliver_now
        
        flash[:success] = "Now you won't forget this event!"
    	redirect_to root_url
    else 
    	flash[:danger] = "Sorry, unable to add reminder. Please try again and fill out the form correctly."
    	render 'new'
  	end
	end
end
