class Rule < ActiveRecord::Base
	belongs_to :sport
	has_one :sign
end
