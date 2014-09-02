class MatchController < ApplicationController
	before_action :set_match, only: [:show, :edit, :update, :destroy]

	def index
		@beefcuts = Meatcut.where(:animal => "cow")
    @porkcuts = Meatcut.where(:animal => "pig")
    @chickencuts = Meatcut.where(:animal => "chicken")
		@techniques = Technique.all
	end

  def answer
    @meatcut = Meatcut.find(params[:meatcut][:name])
    @technique = Technique.find(params[:technique][:name])
    @matches = @meatcut.matches
    
    # if @matches == nil
    #   @meatcut.techniques << @technique
    # end

    @matches.each do |m|
      if m.technique_id == @technique.id
        @match = m
      else
        @match = m
        m.good_idea = "no"
      end
    end
    
  end

	def matchme
    # @meatcut = Meatcut.find(params[:meatcut][:name])
    p params
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
        format.js {}
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_params
      params.require(:match).permit(:meatcut_id, :technique_id, :good_idea, :notes)
    end
end