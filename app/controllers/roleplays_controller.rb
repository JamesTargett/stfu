class RoleplaysController < ApplicationController

  before_action :load_match 

  def index
    @roleplays = @match.roleplays.order(:created_at)
    @roleplay = Roleplay.new
  end

  def create
    @roleplay = @match.roleplays.new(roleplay_params)
    
    if current_user.owns_character?(@match.character1)
      @roleplay.character = @match.character1 
    elsif current_user.owns_character?(@match.character2)
      @roleplay.character = @match.character2
    end

    if @roleplay.save
      redirect_to match_roleplays_path, notice: "roleplay was submitted successfully!"
    else
      render :new
    end
  end

protected

  def load_match
    @match = Match.find(params[:match_id])
  end

  def roleplay_params
    params.require(:roleplay).permit(:message)
  end

end

