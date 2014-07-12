class Meal < ActiveRecord::Base
	belongs_to :meatcut
	belongs_to :technique
end
