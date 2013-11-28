class MatchesController < ApplicationController

  def index
    @matches = Match.all
  end

  def show
    @match = Match.find_by_id(params[:id])

    redirect_to matches_path unless @match.present?
  end

end
