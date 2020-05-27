class PetsController < ApplicationController
  before_action :set_pet, only: %i[show edit update destroy]
  before_action :set_users

  def index
    @pets = Pet.all
  end

  def show; end

  def new
    @pet = Pet.new
  end

  def edit; end

  def create
    @pet = Pet.new(pet_params)

    if @pet.save
      redirect_to pets_path
    else
      render :new
    end
  end

  def update
    if @pet.update(pet_params)
      redirect_to pets_path
    else
      render :edit
    end
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def set_users
    @users = User.all.pluck(:first_name, :id)
  end

  def pet_params
    params.require(:pet).permit(:name, :specie, :user_id)
  end
end
