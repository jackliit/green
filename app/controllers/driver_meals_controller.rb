class DriverMealsController < ApplicationController
  before_action :set_driver_meal, only: [:show, :edit, :update, :destroy]

  # GET /driver_meals
  # GET /driver_meals.json
  def index
    @driver_meals = DriverMeal.all
  end

  # GET /driver_meals/1
  # GET /driver_meals/1.json
  def show
  end

  # GET /driver_meals/new
  def new
    @driver_meal = DriverMeal.new
  end

  # GET /driver_meals/1/edit
  def edit
  end

  # POST /driver_meals
  # POST /driver_meals.json
  def create
    @driver_meal = DriverMeal.new(driver_meal_params)

    respond_to do |format|
      if @driver_meal.save
        format.html { redirect_to @driver_meal, notice: 'Driver meal was successfully created.' }
        format.json { render action: 'show', status: :created, location: @driver_meal }
      else
        format.html { render action: 'new' }
        format.json { render json: @driver_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /driver_meals/1
  # PATCH/PUT /driver_meals/1.json
  def update
    respond_to do |format|
      if @driver_meal.update(driver_meal_params)
        format.html { redirect_to @driver_meal, notice: 'Driver meal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @driver_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /driver_meals/1
  # DELETE /driver_meals/1.json
  def destroy
    @driver_meal.destroy
    respond_to do |format|
      format.html { redirect_to driver_meals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driver_meal
      @driver_meal = DriverMeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def driver_meal_params
      params.require(:driver_meal).permit(:dealer, :carSn, :mealAllowance, :driver_id, :party_id)
    end
end
