class Question < ApplicationRecord
	has_many :question_papers
	has_many :papers, :through => :question_papers
end
