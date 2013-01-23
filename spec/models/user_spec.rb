require 'spec_helper'

describe User do
  describe ".from_authorization" do
    context "when no matching user yet exists" do
      it "creates it" do
        authorization = stub(uid: 10, nickname: "alice", email: "alice@example.com")
        user = User.from_authorization(authorization)

        user.should be_persisted
        user.github_uid.should == 10
        user.nickname.should == "alice"
        user.email.should == "alice@example.com"
      end
    end

    context "when a matching user already exists" do
      it "returns it" do
        existing_user = User.create!(github_uid: 20, nickname: "alice", email: "alice@example.com")
        authorization = stub(uid: 20, nickname: "alice", email: "alice@example.com")
        user = User.from_authorization(authorization)
        user.should == existing_user
      end
    end
  end
end
