require "rails_helper"

describe "User" do
  describe "associations" do
    let(:user) { User.new({
                            first_name: "Jeb",
                            last_name: "Bush",
                            username: "futureprez",
                            password: "password",
                          }) }


    it "has a name" do
      expect(user.name).to eq("Jeb Bush")
    end

    it "user has reviews" do
      user.reviews.new({
                              title: "Air Force 1 sucks",
                              content: "I didn't like it",
                              movie_id: 1,
                            })
      expect(user.reviews.first).to be_an_instance_of Review
    end

    it "user has ratings" do
      user.ratings.new({
                              value: 5,
                              ratable_id: 1,
                              ratable_type: "Movie",
                            })
      expect(user.ratings.first).to be_an_instance_of Rating
    end

    it "user has comments" do
      user.comments.new({
                              content: "Great film",
                              commentable_id: 1,
                              commentable_type: "Movie",
                            })
      expect(user.comments.first).to be_an_instance_of Comment
    end
  end
end