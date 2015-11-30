class AddUsersToGroup < ActiveRecord::Migration
  def change
    add_reference :groups, :users, index: true
    add_foreign_key :groups, :users
  end
end
