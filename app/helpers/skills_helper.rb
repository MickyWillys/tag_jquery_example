module SkillsHelper
	def tag_links(skill)
		skill.tag_list.map do |tag| 
      link_to tag, 
              skills_path(tag: tag), 
              class: 'label radius secondary'
    end.join(' ').html_safe
	end
end
