class UsersController < ApplicationController
def show
	@user= User.find(params[:id])
	@skills = @user.skills
	@todos= Todo.where(user_id: @user.id) 
end 
def index
	if params[:tag]
	  @skills_2 = Skill.tagged_with(params[:tag])
	  @users = @skills_2.map{ |skill| skill.user }.uniq
	else
	  @skills = Skill.all
	end    
	
end

end