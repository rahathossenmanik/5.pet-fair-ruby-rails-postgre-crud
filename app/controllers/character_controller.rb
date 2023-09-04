class CharacterController < ApplicationController
  def findAll
    render json: {first_name: 'Sam', last_name: 'Thomas', genre: 'rock'}, status: :ok
  end
end
