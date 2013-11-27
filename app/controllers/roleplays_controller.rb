class RoleplaysController < ApplicationController

  before_action :load_match 

  def index
    @roleplays = @match.roleplays
    @roleplay = Roleplay.new # not be nil
  end

  def new
    @roleplay = Roleplay.new
  end

  def create
    @roleplay = @match.roleplays.new(roleplay_params)
    # FIXME: this is temporary until we have login
    @roleplay.character = @match.character1 
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

