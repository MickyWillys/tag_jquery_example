class UsersController < ApplicationController
def show
	@user= User.find(params[:id])
	@skills = @user.skills
	@todos= Todo.where(user_id: @user.id) 
end 
def index
	if params[:tag]
	  @users = User.tagged(params[:tag])
	else
	  @skills = Skill.all
	end    
	
end

end