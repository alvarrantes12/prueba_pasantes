class CarsController < ApplicationController
  before_action :set_car, only: %i[show edit update destroy]
  before_action :set_users

  def index
    @cars = Car.all
  end

  def show; end

  def new
    @car = Car.new
  end

  def edit; end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to cars_path
    else
      render :new
    end
  end

  def update
    if @car.update(car_params)
      redirect_to cars_path
    else
      render :edit
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_path
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def set_users
    @users = User.all.pluck(:first_name, :id)
  end

  def car_params
    params.require(:car).permit(:color, :doors_amount, :brand, :user_id)
  end
end
