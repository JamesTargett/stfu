require 'spec_helper'

describe AboutController do

  render_views

  describe "GET 'index'" do
    it "displays static about page" do
      get :index
      expect(response).to be_success
    end
  end

end