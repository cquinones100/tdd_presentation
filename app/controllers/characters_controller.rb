class CharactersController < ApplicationController
  def index
    render json: Character.all, status: 200
  end
end
