require "rails_helper"

describe "retrieving users" do
  describe "GET /users/{id}" do
    let(:user) do
      user = User.create!(
        :username => "ben", :age => 34, :email => "ben@ben.com"
      )
    end

    before do
      get user_path(user), nil, {"HTTP_ACCEPT" => "application/json"}
    end


    it "returns a 200 status" do
      expect(response.status).to eq(200)
    end

    describe "the serialized response" do
      subject { JSON.parse(response.body)["user"] }

      it "has an ID" do
        expect(subject["id"]).to eq(1)
      end

      it "has a username" do
        expect(subject["username"]).to eq("ben")
      end

      it "has an age" do
        expect(subject["age"]).to eq(34)
      end

      it "has an email address" do
        expect(subject["email"]).to eq("ben@ben.com")
      end
    end
  end
end
