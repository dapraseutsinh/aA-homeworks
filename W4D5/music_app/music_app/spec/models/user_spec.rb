require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) do
    FactoryBot.build(:user,
      email: "jon@gmail.com",
      password: "password")
  end

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:session_token) }
  it { should validate_length_of(:password).is_at_least(6)}
  #(password).is_at_least(6)

  describe "#is_password?" do
    it "verifies good password" do
      expect(user.is_password?(password)).to be true
    end
    it "does not verify bad password" do
      expect(user.is_password?(germs)).to be false
    end
  end

  describe "reset_session_token" do
    it "changes user's session token" do
      session_token = user.session_token
      session_token = reset_session_token

      expect(user.session_token).not_to eq(old_session_token)
    end

    it "returns new session token" do
      expect(user.reset_session_token).to eq(user.session_token)
    end
  end

    describe ".find_by_credentials" do
      before { user.save }

      it "returns a good user"  do
        expect(User.find_by_credentials('jon@gmail.com', 'password').to eq(user))
      end

      it "does not return a bad user" do
        expect(User.find_by_credentials('jon@yahoo.com', 'password').to eq(nil))

      end
    end
end
