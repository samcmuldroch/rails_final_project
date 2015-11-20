class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :text
      t.string :time

      t.timestamps null: false
    end
  end
end
