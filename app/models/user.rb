class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :group
  has_many :groups
  has_many :reminders
  validates :name, presence: true
  
  def sendmail()
#      Pony.mail :to => "vincenttseng06@gmail.com", :via =>:sendmail,
#      :from => "mintseng@berkeley.edu", :subject => "hi",
#      :headers => { 'Content-Type' => "text/plain" }, :body => "testing"
    ActionMailer::Base.mail(from: "vincenttseng06@gmail.com", to: "vincenttseng06@gmail.com", subject: "Test", body: "Test").deliver
  end


end
