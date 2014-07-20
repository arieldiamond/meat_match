class MatchController < ApplicationController
	before_action :set_match, only: [:show, :edit, :update, :destroy]

	def index
		@meatcuts = Meatcut.all
		@techniques = Technique.all
	end

	def show
	end

	def new
    @match = Match.new
  end

  def edit
  end

  def create
    @match = Match.new(match_params)

    respond_to do |format|
      if @match.save
        format.html { redirect_to @match, notice: 'match was successfully created.' }
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end
end