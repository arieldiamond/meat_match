class MatchController < ApplicationController
	def index
		@meatcuts = Meatcut.all
	end

	def show
	end
end