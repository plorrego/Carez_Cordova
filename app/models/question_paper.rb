class QuestionPaper < ApplicationRecord
	belongs_to :question 
	belongs_to :paper 
end
