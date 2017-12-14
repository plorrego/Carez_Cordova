class Paper < ApplicationRecord
	belongs_to :user
	has_many :question_papers
	has_many :questions, :through => :question_papers
end
