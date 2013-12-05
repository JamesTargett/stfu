require 'spec_helper'

describe Admin::MatchesController do

  render_views

  describe "GET 'new'" do
    it "displays admin page" do
      get 'new'
      expect(response).to be_success
    end
  end

end
