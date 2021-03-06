require 'spec_helper'

describe RoleplaysController do

  render_views

  describe "GET 'index'" do
    it "displays all submitted roleplays for a match" do
      match = FactoryGirl.create(:match)
      roleplays = [FactoryGirl.create(:roleplay, match: match), FactoryGirl.create(:roleplay, match: match)]
      get :index, {match_id: match.id}
      expect(response).to be_success
      expect(response).to render_template(:index)
      expect(assigns(:roleplays)).to match_array(roleplays)
    end
  end

    pending "roleplay create fails if no user signed in""assigns roleplays for the correct character"
    pending "roleplay is created for the correct match"
    pending "notifies on Roleplay failure"
end

