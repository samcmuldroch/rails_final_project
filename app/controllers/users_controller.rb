class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  # def create 
  # 	params.require(:name, :email, :password, :password_confirmation)
  # 	params.permit(:name)
  # 	puts params

  # end 
  def show
  	@user = User.find(params(:id))
  end 

end
