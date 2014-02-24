class SkillsController < ApplicationController

  def index
    if params[:tag]
      @skills = Skill.tagged_with(params[:tag], :any => true) 
    else
      @skills = Skill.all
    end    
  end

  def show
    
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    if @skill.update(skill_params)
      redirect_to @skill.user
    else
      render 'edit'
    end
  end

  private
  def skill_params
    params.require(:skill).permit(:title, :description, :tag_list)
  end

end
