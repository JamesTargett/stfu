require 'spec_helper'

describe MatchesController do

  render_views

  describe "GET 'index'" do
    it "returns a list of matches" do
      matches = [FactoryGirl.create(:match), FactoryGirl.create(:match)]
      get :index
      expect(response).to be_success
      expect(response).to render_template(:index)
      expect(assigns(:matches)).to match_array(matches)
    end
  end

  describe "GET 'show'" do
    it "returns an individual match" do
      match = [FactoryGirl.create(:match)]
      get :show, id: match
      expect(response).to be_success
      expect(response).to render_template(:show)
    end
  end

  describe "GET 'show'" do
    it "fails to return an individual match" do
      get :show, id: 3

      expect(response).to redirect_to matches_path
    end
  end
end