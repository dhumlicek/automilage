class MilagesController < ApplicationController
  before_action :set_milage, only: [:show, :edit, :update, :destroy]

  # GET /milages
  # GET /milages.json
  def index
    @milages = Milage.all
  end

  # GET /milages/1
  # GET /milages/1.json
  def show
  end

  # GET /milages/new
  def new
    @milage = Milage.new
  end

  # GET /milages/1/edit
  def edit
  end

  # POST /milages
  # POST /milages.json
  def create
    @milage = Milage.new(milage_params)

    respond_to do |format|
      if @milage.save
        format.html { redirect_to @milage, notice: 'Milage was successfully created.' }
        format.json { render :show, status: :created, location: @milage }
      else
        format.html { render :new }
        format.json { render json: @milage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /milages/1
  # PATCH/PUT /milages/1.json
  def update
    respond_to do |format|
      if @milage.update(milage_params)
        format.html { redirect_to @milage, notice: 'Milage was successfully updated.' }
        format.json { render :show, status: :ok, location: @milage }
      else
        format.html { render :edit }
        format.json { render json: @milage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /milages/1
  # DELETE /milages/1.json
  def destroy
    @milage.destroy
    respond_to do |format|
      format.html { redirect_to milages_url, notice: 'Milage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_milage
      @milage = Milage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def milage_params
      params.require(:milage).permit(:vehicle_id, :date, :amount, :cost, :mpg, :cpg, :cpm, :trip, :serviced, :notes)
    end
end
