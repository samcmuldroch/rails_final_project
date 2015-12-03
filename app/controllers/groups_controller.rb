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

    dogs = {"fashionable" => "https://drive.google.com/a/berkeley.edu/file/d/0ByBCSV55jWH5WW5leU11WjdZQmc/view?usp=sharing",
            "sporty" => "https://drive.google.com/a/berkeley.edu/file/d/0ByBCSV55jWH5bER3b0dfUFNqZFE/view?ths=true",
            "happy" => "https://drive.google.com/a/berkeley.edu/file/d/0ByBCSV55jWH5UUR4UlYyVnluWWM/view?usp=sharing",
            "guilty" => "https://drive.google.com/a/berkeley.edu/file/d/0ByBCSV55jWH5UnNyampKb29ydXc/view?usp=sharing",
            "festive" => "https://drive.google.com/a/berkeley.edu/file/d/0ByBCSV55jWH5M2RfRUhtWkF6OGc/view?usp=sharing",
            "hungry" => "https://drive.google.com/a/berkeley.edu/file/d/0ByBCSV55jWH5SUQ2VkF6bmx6Qzg/view?usp=sharing",
            "thirst" => "https://drive.google.com/a/berkeley.edu/file/d/0ByBCSV55jWH5UkFfVWxVMTRMVEE/view?usp=sharing",
            "lazy" => "https://drive.google.com/a/berkeley.edu/file/d/0ByBCSV55jWH5dnVYNlhvQ0Ytb2s/view?usp=sharing"}


    @group.users.each do |user|
        if user.animal == nil or !dogs.include? user.animal
            user.animal = "happy"
            user.save
        end
        ActionMailer::Base.mail(from: "rubyfinalproject@gmail.com", to: user.email, subject: "Happy Birthday " + user.name + "!", body: "Here's a picture of a " + user.animal + " greyhound" + "!" + "\n" + dogs[user.animal]).deliver
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
