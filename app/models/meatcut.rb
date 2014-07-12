class Meatcut < ActiveRecord::Base
	has_many :meals
	has_many :techniques, through: :meals
end
