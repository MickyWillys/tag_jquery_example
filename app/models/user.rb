class User < ActiveRecord::Base
	has_many :todos
	has_many :skills

  def self.tagged(tags)
    skills = Skill.tagged_with(tags)
    skills.map{ |skill| skill.user }.uniq
  end
end
