class SpecialPart < ActiveRecord::Base
	belongs_to :user
	belongs_to :church
	belongs_to :postulate
	has_many :special_part_users
end
