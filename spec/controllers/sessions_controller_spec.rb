require 'spec_helper'

describe SessionsController do

  render_views

  describe "GET 'new'" do
    it "displays page with form" do
      get 'new'
      expect(response).to be_success
    end
  end

end