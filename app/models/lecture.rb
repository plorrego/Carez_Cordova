class Lecture < ApplicationRecord
	belongs_to :group
	has_many :student_lectures
	has_many :users, :through => :student_lectures
end
