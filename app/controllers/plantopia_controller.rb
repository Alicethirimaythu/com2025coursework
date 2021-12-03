class PlantopiaController < ApplicationController
  before_action :authenticate_user!
  before_action :set_plantopium, only: %i[ show edit update destroy ]

  # GET /plantopia or /plantopia.json
  def index
    @plantopia = Plantopium.all
  end

  # GET /plantopia/1 or /plantopia/1.json
  def show
    #@hasdiary = not Diary.find_by(plantopia_id: @plantopium.id).nil?
    @hasdiary = Diary.where(["plantopia_id = ?", @plantopium.id]).length >= 1
  end

  # GET /plantopia/new
  def new
    @plantopium = Plantopium.new
  end

  # GET /plantopia/1/edit
  def edit
  end

  # POST /plantopia or /plantopia.json
  def create
    @plantopium = Plantopium.new(plantopium_params)

    respond_to do |format|
      if @plantopium.save
        format.html { redirect_to @plantopium, notice: "Plantopium was successfully created." }
        format.json { render :show, status: :created, location: @plantopium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plantopium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plantopia/1 or /plantopia/1.json
  def update
    respond_to do |format|
      if @plantopium.update(plantopium_params)
        format.html { redirect_to @plantopium, notice: "Plantopium was successfully updated." }
        format.json { render :show, status: :ok, location: @plantopium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @plantopium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plantopia/1 or /plantopia/1.json
  def destroy
    @plantopium.destroy
    respond_to do |format|
      format.html { redirect_to plantopia_url, notice: "Plantopium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plantopium
      @plantopium = Plantopium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plantopium_params
      params.require(:plantopium).permit(:name, :description, :plantpic)
    end
end
