class PetTypeController < ApplicationController
  def index
    @petTypes = PetType.all
    puts @petTypes
    render json: @petTypes, status: :ok
  end

  def show
    @petType = PetType.find(params[:id])
    fresh_when etag: @petType
  end

  def create
    petType = PetType.create!(petType_params)
    redirect_to petType
  end

  def update
    petType = PetType.find(params[:id])
    petType.update!(petType_params)
    redirect_to petType
  end

  def destroy
    petType = PetType.find(params[:id])
    petType.destroy!
    redirect_to petTypes_path
  end

  private
    def petType_params
      params.require(:petType).permit(:title, :content)
    end
end
