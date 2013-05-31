require 'spec_helper'

describe User do
  let (:name) { "Toby" }
  let (:email) { "toby.sims@gmail.com" }
  let (:password) { "123" }
  let (:user) {
    User.create({
          name: name,
          email: email,
          password: password,
          password_confirmation: password
  })
  }

  describe ".create" do
    it "should create a new user with name, email and password" do
      expect(user.name).to eq name
      expect(user.email).to eq email
      expect(user.password).to be_nil
      expect(user.fish).not_to be_nil
      expect(user.salt).not_to be_nil
    end
  end

  describe ".authenticate" do
    it "should authenticate a new user" do
    u = user.authenticate(password)
    expect(u).not_to be_nil
    end
  end


end
