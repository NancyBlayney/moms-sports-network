class Rule < ActiveRecord::Base
	belongs_to :sport
	has_many :signs
end
