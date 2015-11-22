class ReminderController < ApplicationController
  def new
    @reminders = Reminder.new
  end

  def create_reminder
    @note = Reminder.new(text: params[:text], time: params[:time])
    current_user.reminders << @note
    redirect_to root_path
  end

end
