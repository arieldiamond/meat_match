class Technique < ActiveRecord::Base
	has_many :meals
	has_many :meatcuts, through: :meals
end
