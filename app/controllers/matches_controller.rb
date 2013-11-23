class MatchesController < ApplicationController

  def index
    @matches = Match.all
  end

  def show
    @match = Match.find(params[:id])
  end



  # def new
  #   @match = Match.new
  # end

  # def edit
  #   @match = Match.find(params[:id])
  # end

  # def create
  #   @match = Match.new(match_params)

  #   if @match.save
  #     redirect_to_matches_path
  #   else
  #     render :new
  #   end
  # end

  # def update
  #   @match = Match.find(params[:id])

  #   if @match.update_attributes(match_params)
  #     redirect_to_matche_path
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  # end

end
