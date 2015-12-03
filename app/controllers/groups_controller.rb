class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def index
  	@groups = Group.all
  end

  def show
  	@group = Group.find(params[:id])
  end

  def email
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
  	@group = Group.find(params[:id])
#  	@group.users.each do |user|
#  		Pony.mail(:to => user.email, :from => 'samcmuldroch@berkeley.edu', :subject => 'Important email from' + @group.name, :body => 'body of email here')
#  	end

    @group.users.each do |user|
        ActionMailer::Base.mail(from: "rubyfinalproject@gmail.com", to: user.email, subject: "Happy Birthday " + user.name + "!" + " Here's a picture of a " + user.animal + "!", body: ":D").deliver
    end
    
    
    #testing testing
#    Pony.mail(:to => 'mcmuldroch.sydney@gmail.com', :from => 'samcmuldroch@berkeley.edu', :subject => 'Important email from' + @group.name, :body => 'body of email here')
    redirect_to root_path
  end

  def join_group
    @group = Group.find(params[:id])
    if not current_user.groups.include?(@group) 
      current_user.groups.push(@group)
      @group.users.push(current_user)
      flash[:success] = 'You have joined group ' + @group.name + '!'
      redirect_to groups_path
    else
      flash[:warning] = 'You have already joined that group'
      redirect_to groups_path
    end 

  end
end
