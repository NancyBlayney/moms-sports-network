class Answer < ActiveRecord::Base
	belongs_to :question
	belongs_to :quiz
	belongs_to :sport

end
