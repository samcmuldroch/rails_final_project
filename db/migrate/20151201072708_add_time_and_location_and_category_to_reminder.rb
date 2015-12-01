class AddTimeAndLocationAndCategoryToReminder < ActiveRecord::Migration
  def change
    add_column :reminders, :time, :datetime
    add_column :reminders, :location, :string
    add_column :reminders, :category, :string
  end
end
