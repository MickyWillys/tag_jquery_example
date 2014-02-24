class User < ActiveRecord::Base
	has_many :todos
  acts_as_taggable
end
