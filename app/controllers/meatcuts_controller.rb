class MeatcutsController < ApplicationController
  before_action :set_meatcut, only: [:show, :edit, :update, :destroy]

  # GET /meatcuts
  # GET /meatcuts.json
  def index
    @meatcuts = Meatcut.all
    @beefcuts = Meatcut.where(:animal => "cow")
    @porkcuts = Meatcut.where(:animal => "pig")
    @chickencuts = Meatcut.where(:animal => "chicken")
  end

  # GET /meatcuts/1
  # GET /meatcuts/1.json
  def show
  end

  # GET /meatcuts/new
  def new
    @meatcut = Meatcut.new
  end

  # GET /meatcuts/1/edit
  def edit
  end

  # POST /meatcuts
  # POST /meatcuts.json
  def create
    @meatcut = Meatcut.new(meatcut_params)

    respond_to do |format|
      if @meatcut.save
        format.html { redirect_to @meatcut, notice: 'Meatcut was successfully created.' }
        format.json { render :show, status: :created, location: @meatcut }
      else
        format.html { render :new }
        format.json { render json: @meatcut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meatcuts/1
  # PATCH/PUT /meatcuts/1.json
  def update
    respond_to do |format|
      if @meatcut.update(meatcut_params)
        format.html { redirect_to @meatcut, notice: 'Meatcut was successfully updated.' }
        format.json { render :show, status: :ok, location: @meatcut }
      else
        format.html { render :edit }
        format.json { render json: @meatcut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meatcuts/1
  # DELETE /meatcuts/1.json
  def destroy
    @meatcut.destroy
    respond_to do |format|
      format.html { redirect_to meatcuts_url, notice: 'Meatcut was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meatcut
      @meatcut = Meatcut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meatcut_params
      params.require(:meatcut).permit(:name, :animal, :primal, :description, :alt_names)
    end
end
