class Sign < ActiveRecord::Base
	belongs_to :sport
	belongs_to :rule
end
