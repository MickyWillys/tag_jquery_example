class UsersController < ApplicationController
def show
	@user= User.find(params[:id])
	@skills_nb  = Skill.where(user_id: @user.id).count
	@todos= Todo.where(user_id: @user.id) 
end 

end