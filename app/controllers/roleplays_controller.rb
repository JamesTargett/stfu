class RoleplaysController < ApplicationController

  before_filter :load_match 

  def index
    @roleplays = @match.roleplays
  end

protected

  def load_match
    @match = Match.find(params[:match_id])
  end

end

