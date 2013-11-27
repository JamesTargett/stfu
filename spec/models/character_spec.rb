require 'spec_helper'

describe Character do
  before :each do
    @character = FactoryGirl.build :character
  end

  describe "Character Creation" do
    pending "should fail if any field is incomplete"
    
    it "should fail if character name is already being used" do
      character1 = FactoryGirl.create :character, name: "Andro"
      character2 = FactoryGirl.build :character, name: "Andro"
      expect(character2.save).to eq(false)
    end
    
    pending "should fail if finisher is already being used"
  end
end
