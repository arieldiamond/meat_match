class Meatcut < ActiveRecord::Base
	has_many :matches
	has_many :techniques, through: :matches
end
