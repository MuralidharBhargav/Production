class BillRecieptsController < ApplicationController
  before_action :set_bill_reciept, only: [:show, :edit, :update, :destroy]

  # GET /bill_reciepts
  # GET /bill_reciepts.json
  def index
    @bill_reciepts = BillReciept.all
  end

  # GET /bill_reciepts/1
  # GET /bill_reciepts/1.json
  def show
  end

  # GET /bill_reciepts/new
  def new
    @bill_reciept = BillReciept.new
  end

  # GET /bill_reciepts/1/edit
  def edit
  end

  # POST /bill_reciepts
  # POST /bill_reciepts.json
  def create
    @bill_reciept = BillReciept.new(bill_reciept_params)

    respond_to do |format|
      if @bill_reciept.save
        format.html { redirect_to @bill_reciept, notice: 'Bill reciept was successfully created.' }
        format.json { render :show, status: :created, location: @bill_reciept }
      else
        format.html { render :new }
        format.json { render json: @bill_reciept.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bill_reciepts/1
  # PATCH/PUT /bill_reciepts/1.json
  def update
    respond_to do |format|
      if @bill_reciept.update(bill_reciept_params)
        format.html { redirect_to @bill_reciept, notice: 'Bill reciept was successfully updated.' }
        format.json { render :show, status: :ok, location: @bill_reciept }
      else
        format.html { render :edit }
        format.json { render json: @bill_reciept.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_reciepts/1
  # DELETE /bill_reciepts/1.json
  def destroy
    @bill_reciept.destroy
    respond_to do |format|
      format.html { redirect_to bill_reciepts_url, notice: 'Bill reciept was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill_reciept
      @bill_reciept = BillReciept.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bill_reciept_params
      params.require(:bill_reciept).permit(:Title, :description, :amount)
    end
end
