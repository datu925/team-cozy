require 'rails_helper'

describe 'rating' do
  let(:user) { User.new(first_name: "Dan", last_name: "T", username: "dayo", password: "password")}
  let(:movie) { Movie.new(title: "Titanic")}
  let(:rating) { Rating.new(user: user, ratable: movie) }



  describe 'initialization' do
    it 'creates a new instance of movie' do
      expect(rating).to be_instance_of(Rating)
    end
  end

  describe 'numericality' do
    context "when non-integer" do
      it 'has errors' do
        rating.value = 4.5
        expect(rating.valid?).to eq(false)
      end
    end

    context "when outside range" do
      it 'has errors' do
        rating.value = 11
        expect(rating.valid?).to eq(false)
      end
    end

    context "when valid" do
      it 'has no errors' do
        rating.value = 6
        expect(rating.valid?).to eq(true)
      end
    end
  end

  describe '#uniqueness' do
    context "when user has made rating before for that object" do
      it 'is invalid' do
        rating.value = 5
        puts "****"
        puts
        puts rating.ratable
        puts
        puts "****"
        rating.save
        new_rating = rating.user.ratings.create(ratable: movie, value: 6)

        expect(new_rating.save).to eq(false)
      end
    end

    context "when user hasn't made ratings before for that object" do
      it 'is valid' do
        rating.value = 5
        expect(rating.save).to eq(true)
      end
    end
  end
end