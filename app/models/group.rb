class Group < ApplicationRecord
	belongs_to :user
	has_many :users, :through => :student_group
end
