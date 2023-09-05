class PetController < ApplicationController
  def index
    @pets = Pet.all
    puts @pets
    render json: @pets, status: :ok
  end

  def show
    @pet = Pet.find(params[:id])
    fresh_when etag: @pet
  end

  def create
    pet = Pet.create!(pet_params)
    redirect_to pet
  end

  def update
    pet = Pet.find(params[:id])
    pet.update!(pet_params)
    redirect_to pet
  end

  def destroy
    pet = Pet.find(params[:id])
    pet.destroy!
    redirect_to pets_path
  end

  private
    def pet_params
      params.require(:pet).permit(:title, :content)
    end
end
