class Query < ActiveRecord::Base
	belongs_to :member
	has_many :comments
end
