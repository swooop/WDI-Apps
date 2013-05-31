require 'spec_helper'

describe UsersController do
  let (:users) {
      UsersController.new
  }

  let (:user_1) {
    User.create(
      name: "George",
      email: "george@fish.com",
      password: "yupsh"
      )
  }

  let (:user_2) {
    User.create(
      name: "Rob",
      email: "rob@fish.com",
      password: "yup"
      )
  }

  let (:user_3) {
    User.create(
      name: "Soner",
      email: "soner@fish.com",
      password: "okay"
      )
  }
  
  describe ".index" do
    it "shoudl reutrn an array of users in @users" do
      users.index
      expect(users.users).to match_array [user_1, user_2, user_3]
    end
  end
end