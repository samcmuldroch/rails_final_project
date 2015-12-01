class Reminder < ActiveRecord::Base
  belongs_to :user
  validates :text, presence: true
  validates :time, presence: true
end
