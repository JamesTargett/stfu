require 'spec_helper'

describe CharactersController do

  render_views

  describe "GET 'index'" do
    it "returns http success" do
      characters = [FactoryGirl.create(:character), FactoryGirl.create(:character)]
      get :index
      puts(response.body)
      expect(response).to be_success
      expect(response).to render_template("index")
      expect(assigns(:characters)).to match_array(characters)
    end
  end

  # describe "GET 'new'" do
  #   it "returns http success if character created " do
  #     get :new
  #     expect(response).to be_success
  #     expect(response).to render_template("new")
  #     expect(assigns)
  #   end
  # end

  describe "POST 'create'" do
    it "creates a new character" do
      post :create, character: {name: "Billy Suede", age: "43", height: "6'4", weight: "365 lbs", wrestling_style: "Technical", finisher: "Sweet Love"}
      character = assigns(:character)
      expect(character).to be_a(Character)
      expect(character.name).to eq("Billy Suede")
      expect(response).to redirect_to(characters_path)
    end
  end

end
