class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)

    if @character.save
      redirect_to characters_path, notice: "Your character has been created."
    else
      render :new
    end
  end

  protected

  def character_params
    params.require(:character).permit(:name, :height, :weight, :wrestling_style, :finisher, :age)
  end

end
