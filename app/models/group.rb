class Group < ApplicationRecord
	belongs_to :user

	has_many :student_groups
	has_many :users, :through => :student_groups
end
