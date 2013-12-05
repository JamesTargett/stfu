require 'spec_helper'

describe User do
  before :each do
    @user = FactoryGirl.build :user
  end

  describe "Registration" do
    it "should fail without password" do
      @user = FactoryGirl.build :user, password: nil, password_confirmation: nil
      expect(@user.save).to eq(false)
      expect(@user.errors[:password].first).to eq("can't be blank")
    end

    it "should fail without password confirmation" do
      @user.password_confirmation = nil
      expect(@user.save).to eq(false)
      expect(@user.errors[:password_confirmation].first).to eq("can't be blank")
    end

    it "should work with password and password confirmation" do
      expect(@user.save).to eq(true)
      expect(User.count).to eq(1)
    end

    it "should not work if password and password confirmation don't match" do
      @user.password_confirmation = "password"
      expect(@user.save).to eq(false)
    end

    it "should not work if email is already taken by another user" do
      user1 = FactoryGirl.create :user, email: "fightclub@makeandsellsoap.com"
      user2 = FactoryGirl.build :user, email: "fightclub@makeandsellsoap.com"
      expect(user2.save).to eq(false)
    end

    it "should not work for passwords less than 6 characters" do
      @user.password = "soap"
      @user.password_confirmation = "soap"
      expect(@user.save).to eq(false)
    end

    it "should not work for passwords more than 20 characters" do
      @user.password = "thispasswordislongerthan20characters"
      @user.password_confirmation = "thispasswordislongerthan20characters"
      expect(@user.save).to eq(false)
    end

    it "should not work if email provided is not a valid email address" do
      @user.email = "makesoapfightclub.com"
      expect(@user.save).to eq(false)
    end


  end

end
