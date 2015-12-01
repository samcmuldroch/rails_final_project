class AddReminderToUser < ActiveRecord::Migration
  def change
    add_reference :users, :reminder, index: true
    add_foreign_key :users, :reminders
  end
end
