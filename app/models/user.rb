class User < ActiveRecord::Base
	has_many :todos
	has_many :skills
end
