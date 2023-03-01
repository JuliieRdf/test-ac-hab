class HabitantsController < ApplicationController
  before_action :set_habitant, only: %i[ show edit update destroy ]

  # GET /habitants or /habitants.json
  def index
    @habitants = Habitant.all
  end

  # GET /habitants/1 or /habitants/1.json
  def show
  end

  # GET /habitants/new
  def new
    @habitant = Habitant.new
  end

  # GET /habitants/1/edit
  def edit
  end

  # POST /habitants or /habitants.json
  def create
    @habitant = Habitant.new(habitant_params)

    respond_to do |format|
      if @habitant.save
        format.html { redirect_to habitant_url(@habitant), notice: "Habitant was successfully created." }
        format.json { render :show, status: :created, location: @habitant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @habitant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /habitants/1 or /habitants/1.json
  def update
    respond_to do |format|
      if @habitant.update(habitant_params)
        format.html { redirect_to habitant_url(@habitant), notice: "Habitant was successfully updated." }
        format.json { render :show, status: :ok, location: @habitant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @habitant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /habitants/1 or /habitants/1.json
  def destroy
    @habitant.destroy

    respond_to do |format|
      format.html { redirect_to habitants_url, notice: "Habitant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habitant
      @habitant = Habitant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def habitant_params
      params.require(:habitant).permit(:name, :type, :personality, :birthday, :photo)
    end
end
