require 'rails_helper'

RSpec.describe User, type: :model do
  context "user is valid" do
    it "has a username" do
      user = User.create(username: "Fred", email: "fred@gmail.com", password: "password", password_confirmation: "password" )
      expect(user.username).to eq("Fred")
    end

    it "has an email" do
      user = User.create(username: "Fred", email: "fred@gmail.com", password: "password", password_confirmation: "password" )
      expect(user.email).to eq("fred@gmail.com")
    end

    it "has a valid password" do
      user = User.create(username: "Fred", email: "fred@gmail.com", password: "password", password_confirmation: "password" )
      expect(user.valid_password?("password")).to eq(true)
    end

    it "is saved in the database" do
      user = User.create(username: "Fred", email: "fred@gmail.com", password: "password", password_confirmation: "password" )
      last_user = User.last
      expect(last_user).to eq(user)
    end
  end

  context "user is invalid" do

    it "is not saved in the data base" do
      user = User.create(username: "", email: "fred@gmail.com", password: "password", password_confirmation: "paswsord" )
      last_user = User.last
      expect(last_user).not_to eq(user)
    end
  end
end
