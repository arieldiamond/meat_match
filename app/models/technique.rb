class Technique < ActiveRecord::Base
	has_many :matches
	has_many :meatcuts, through: :matches
end
