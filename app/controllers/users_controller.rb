class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def show
  	@user = User.find(params(:id))
  end 

  def getGroups
    1
  end 

end
