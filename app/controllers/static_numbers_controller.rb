class StaticNumbersController < ApplicationController
  before_action :set_static_number, only: [:show, :edit, :update, :destroy]

  # GET /static_numbers
  # GET /static_numbers.json
  def index
    @static_numbers = StaticNumber.all
  end

  # GET /static_numbers/1
  # GET /static_numbers/1.json
  def show
  end

  # GET /static_numbers/new
  def new
    @static_number = StaticNumber.new
  end

  # GET /static_numbers/1/edit
  def edit
  end

  # POST /static_numbers
  # POST /static_numbers.json
  def create
    @static_number = StaticNumber.new(static_number_params)

    respond_to do |format|
      if @static_number.save
        format.html { redirect_to @static_number, notice: 'Static number was successfully created.' }
        format.json { render action: 'show', status: :created, location: @static_number }
      else
        format.html { render action: 'new' }
        format.json { render json: @static_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /static_numbers/1
  # PATCH/PUT /static_numbers/1.json
  def update
    respond_to do |format|
      if @static_number.update(static_number_params)
        format.html { redirect_to @static_number, notice: 'Static number was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @static_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /static_numbers/1
  # DELETE /static_numbers/1.json
  def destroy
    @static_number.destroy
    respond_to do |format|
      format.html { redirect_to static_numbers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_static_number
      @static_number = StaticNumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def static_number_params
      params.require(:static_number).permit(:date, :title, :number)
    end
end
