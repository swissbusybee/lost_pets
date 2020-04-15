class PetsController < ApplicationController
  before_action :set_path, only:[:show, :edit, :update, :destroys]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @pet.update(pet_params)
    if @pet.save
      redirect_to pet_path(@pet.id)
    else
      render :edit
    end
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :location_found, :found_at, :species)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
