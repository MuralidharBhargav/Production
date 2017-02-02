class PinBilsController < ApplicationController
  before_action :set_pin_bil, only: [:show, :edit, :update, :destroy]

  # GET /pin_bils
  # GET /pin_bils.json
  def index
    @pin_bils = PinBil.all
  end

  # GET /pin_bils/1
  # GET /pin_bils/1.json
  def show
  end

  # GET /pin_bils/new
  def new
    @pin_bil = PinBil.new
  end

  # GET /pin_bils/1/edit
  def edit
  end

  # POST /pin_bils
  # POST /pin_bils.json
  def create
    @pin_bil = PinBil.new(pin_bil_params)

    respond_to do |format|
      if @pin_bil.save
        format.html { redirect_to @pin_bil, notice: 'Pin bil was successfully created.' }
        format.json { render :show, status: :created, location: @pin_bil }
      else
        format.html { render :new }
        format.json { render json: @pin_bil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pin_bils/1
  # PATCH/PUT /pin_bils/1.json
  def update
    respond_to do |format|
      if @pin_bil.update(pin_bil_params)
        format.html { redirect_to @pin_bil, notice: 'Pin bil was successfully updated.' }
        format.json { render :show, status: :ok, location: @pin_bil }
      else
        format.html { render :edit }
        format.json { render json: @pin_bil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pin_bils/1
  # DELETE /pin_bils/1.json
  def destroy
    @pin_bil.destroy
    respond_to do |format|
      format.html { redirect_to pin_bils_url, notice: 'Pin bil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pin_bil
      @pin_bil = PinBil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pin_bil_params
      params.require(:pin_bil).permit(:Title, :Date_of_payment, :Description, :amount)
    end
end
