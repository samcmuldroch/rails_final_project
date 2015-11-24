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
  	@group = Group.find(params[:id])
  	#@group.users.each do |user|
  	#	Pony.mail(:to => user.email, :from => 'samcmuldroch@berkeley.edu', :subject => 'Important email from' + @group.name, :body => 'body of email here')
  	#end
  end
end
