class AddResetPasswordSentAtToUser < ActiveRecord::Migration
  def change
    add_column :users, :reset_password_sent_at, :time
  end
end
