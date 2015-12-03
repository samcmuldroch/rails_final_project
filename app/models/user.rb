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
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: 'gmail.com',
    Authentication: "plain",
    enable_starttls_auto: true,
    user_name: 'rubyfinalproject@gmail.com',
    password: 'r1u2b3y4'
}
    ActionMailer::Base.mail(from: "rubyfinalproject@gmail.com", to: "rubyfinalproject@gmail.com", subject: "Test", body: "Test").deliver
    
  end


end
