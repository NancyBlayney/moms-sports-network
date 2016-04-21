class Quiz < ActiveRecord::Base
	belongs_to :sport
	has_many :questions
	has_many :answers



	# def initialize(sport)
	# 	@sport = sport
	# 	@questions = @sport.questions
	# 	@answers = @sport.answers



	# end









end
