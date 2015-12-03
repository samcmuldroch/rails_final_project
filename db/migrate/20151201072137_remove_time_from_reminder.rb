class RemoveTimeFromReminder < ActiveRecord::Migration
  def change
  	remove_column :reminders, :time
  end
end
