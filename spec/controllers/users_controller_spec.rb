require 'spec_helper'

describe UsersController do

  render_views

  describe "GET 'new'" do
    it "returns http success" do
      get :new
      expect(response).to be_success
      expect(response).to render_template(:new)
      expect(assigns(:user)).to be_a_new(User)
    end
  end

  describe "POST 'create'" do
    it "creates a new user with all correct info" do
      # FIXME: Use FactoryGirl to generate the params 
      post :create, user: {email: "tylerd@makeandsellsoap.com", password: "hitmeashardasyoucan", password_confirmation: "hitmeashardasyoucan"}
      user = assigns(:user) # fetches @user
      expect(user).to be_a(User) # user.new_record? => false
      # expect(user.username).to eq("Tyler Durden")
      expect(response).to redirect_to(new_character_path) # 302
    end

    it "fails to create a user with missing information" do
      # FIXME: Use FactoryGirl to generate the params 
      post :create, user: {password: "hitmeashardasyoucan", password_confirmation: "hitmeashardasyoucan"}
      user = assigns(:user) # fetches @user
      expect(user).to be_a_new(User) # user.new_record? => true
      # expect(user.username).to eq("Tyler Durden")
      expect(response).to render_template("new") # 200
    end

  end

end