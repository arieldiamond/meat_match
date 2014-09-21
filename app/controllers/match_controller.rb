class MatchController < ApplicationController
	before_action :set_match, only: [:show, :edit, :update, :destroy]

	def index
		@beefcuts = Meatcut.where(:animal => "cow")
    @porkcuts = Meatcut.where(:animal => "pig")
    @chickencuts = Meatcut.where(:animal => "chicken")
		@techniques = Technique.all
	end

  def answer
    if params[:meatcut][:name] == '' && params[:technique][:name] == ''
      respond_to do |format|
        format.html { redirect_to '/match/nothing' }
      end
    elsif params[:meatcut][:name] != '' && params[:technique][:name] != ''
      @meatcut = Meatcut.find(params[:meatcut][:name])
      @technique = Technique.find(params[:technique][:name])
      @matches = @meatcut.matches
      @matches.each do |m|
      if m.technique_id == @technique.id
        @match = m
        return @match
      end
    end
    elsif params[:meatcut][:name] == '' && params[:technique][:name] != ''
      @technique = Technique.find(params[:technique][:name])
      meatcuts = []
      @technique.meatcuts.each { |m| meatcuts << m }
      @meatcut = meatcuts.sample
      @matches = @meatcut.matches
      @matches.each do |m|
      if m.technique_id == @technique.id
        @match = m
        return @match
      end
    end
    else
      @meatcut = Meatcut.find(params[:meatcut][:name])
      techniques = []
      @meatcut.techniques.each { |t| techniques << t }
      @technique = techniques.sample
      @matches = @meatcut.matches     
      @matches.each do |m|
      if m.technique_id == @technique.id
        @match = m
        return @match
        end
      end 
    end
   
  end

	def matchme
    @beefcuts = Meatcut.where(:animal => "cow")
    @porkcuts = Meatcut.where(:animal => "pig")
    @chickencuts = Meatcut.where(:animal => "chicken")
	end

  def automatch 
    @meatcut = Meatcut.find(params[:meatcut][:name])
    @matches = @meatcut.matches
    @techniques = @meatcut.techniques
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