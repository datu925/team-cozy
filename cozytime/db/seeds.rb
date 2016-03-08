dan = User.create!(username: "datu", password_digest: "password", first_name: "Dan", last_name: "Turcza", is_trusted: true)
catie = User.create!(username: "cstallings", password_digest: "password", first_name: "Catie", last_name: "Stallings", is_trusted: false)
lauren = User.create!(username: "laurenn", password_digest: "password", first_name: "Lauren", last_name: "Reid", is_trusted: false)
tiffany = User.create!(username: "tslarson", password_digest: "password", first_name: "Tiffany", last_name: "Larson", is_trusted: false)
roger = User.create!(username: "rebert", password_digest: "password", first_name: "Roger", last_name: "Ebert", is_trusted: true)

users = [dan, catie, lauren, roger]

genres = 10.times.map do
  Genre.create!(name: Faker::Book.genre)
end

movies = 20.times.map do
  years = (1960..2016).to_a

  Movie.create!(title: Faker::Book.title, release_year: years.sample, image_url: Faker::Avatar.image("100x100"), synopsis: Faker::Hipster.paragraph)
end

movies.each do |movie|

  type = genres.sample(2)
  Categorization.create!(movie: movie, genre: type[0])
  Categorization.create!(movie: movie, genre: type[1])

  3.times.map do
    movie.reviews.create!(title: Faker::Hipster.sentence(4), content: Faker::Hipster.paragraph(2), user: users.sample)
  end

   3.times.map do
    movie.ratings.create!(value: rand(10), user: users.sample)
  end

  3.times.map do
    movie.comments.create!(content: Faker::Hipster.paragraph, user: users.sample)
  end

end

reviews = Review.all

reviews.each do |review|

  3.times.map do
    review.ratings.create!(value: rand(10), user: users.sample)
  end

  3.times.map do
    review.comments.create!(content: Faker::Hipster.paragraph, user: users.sample)
  end

end
