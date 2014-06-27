class Postulate < ActiveRecord::Base
	belongs_to :user
	belongs_to :church
	belongs_to :music_type
	has_many :special_parts
	
end
