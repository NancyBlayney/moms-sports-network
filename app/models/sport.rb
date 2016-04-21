class Sport < ActiveRecord::Base
	has_many :rules
	has_many :signs
	has_many :garbs
	has_many :gears
	has_many :positions
	has_one :quiz
	has_many :answers
	


	POSITIONS = []


end
