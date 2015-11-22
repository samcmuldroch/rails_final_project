class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
  belongs_to :group
  validates :name, presence: true
end
