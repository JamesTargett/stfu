class RoleplaysController < ApplicationController

  def index
    @roleplays = Roleplay.all
  end

  def roleplays

  end

end

