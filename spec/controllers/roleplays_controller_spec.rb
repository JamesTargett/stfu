require 'spec_helper'

describe RoleplaysController do

  render_views

  describe "GET 'index'" do
    it "shows all roleplays for a match" do
      roleplays = [FactoryGirl.create(:roleplay), FactoryGirl.create(:roleplay)]
      get :index
      expect(response).to be_success
      expect(response).to render_template(:index)
      expect(assigns(:roleplays)).to match_array(roleplays)
    end
  end

  describe "GET 'new'" do
    it "creates a new instance of Roleplay" do
      get :new
      expect(response).to be_success
      expect(response).to render_template("new")
      expect(assigns(:roleplay)).to be_a_new(Roleplay) 
    end
  end

end

