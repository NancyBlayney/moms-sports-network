class Sport < ActiveRecord::Base
	has_many :rules
	has_many :signs
	has_many :garbs
	has_many :gears
	has_many :positions


	POSITIONS = []


end
