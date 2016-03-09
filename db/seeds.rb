User.destroy_all
Genre.destroy_all
Movie.destroy_all
Comment.destroy_all
Review.destroy_all
Rating.destroy_all
Categorization.destroy_all

dan = User.create!(username: "datu", password: "password", first_name: "Dan", last_name: "Turcza", is_trusted: true)
catie = User.create!(username: "cstallings", password: "password", first_name: "Catie", last_name: "Stallings", is_trusted: false)
lauren = User.create!(username: "laurenn", password: "password", first_name: "Lauren", last_name: "Reid", is_trusted: false)
tiffany = User.create!(username: "tslarson", password: "password", first_name: "Tiffany", last_name: "Larson", is_trusted: false)
roger = User.create!(username: "rebert", password: "password", first_name: "Roger", last_name: "Ebert", is_trusted: true)

users = [dan, catie, lauren, roger]

# genres = 10.times.map do
#   Genre.create!(name: Faker::Book.genre)
# end

# movies = 20.times.map do
#   years = (1960..2016).to_a

#   Movie.create!(title: Faker::Book.title, release_year: years.sample, image_url: "http://image.tmdb.org/t/p/w130/inVq3FRqcYIRl2la8iZikYYxFNR.jpg", synopsis: Faker::Hipster.paragraph)
# end

# movies.each do |movie|

#   type = genres.rotate!
#   Categorization.create!(movie: movie, genre: type[0])
#   Categorization.create!(movie: movie, genre: type[1])

#   3.times.map do
#     movie.reviews.create!(title: Faker::Hipster.sentence(4), content: Faker::Hipster.paragraph(2), user: users.sample)
#   end

#    3.times.map do
#     movie.ratings.create(value: rand(10) + 1, user: users.sample)
#   end

#   3.times.map do
#     movie.comments.create!(content: Faker::Hipster.paragraph, user: users.sample)
#   end

# end

# reviews = Review.all

# reviews.each do |review|

#   3.times.map do
#     review.ratings.create(value: rand(10) + 1, user: users.sample)
#   end

#   3.times.map do
#     review.comments.create!(content: Faker::Hipster.paragraph, user: users.sample)
#   end

# end

action = Genre.create!(name: "Action")
superhero = Genre.create!(name: "Superhero")
romance = Genre.create!(name: "Romance")
suspense = Genre.create!(name: "Suspense")
comedy = Genre.create!(name: "Comedy")
thriller = Genre.create!(name: "Thriller")
childrens = Genre.create!(name: "Childrens")
historical = Genre.create!(name: "Historical")
sci = Genre.create!(name: "Sci-Fi")
drama = Genre.create!(name: "Drama")
animated = Genre.create!(name: "Animated")

movie1 = Movie.create!(title: "Deadpool", release_year: 2016, image_url: "http://image.tmdb.org/t/p/w130/inVq3FRqcYIRl2la8iZikYYxFNR.jpg", synopsis: "Based upon Marvel Comics’ most unconventional anti-hero, DEADPOOL tells the origin story of former Special Forces operative turned mercenary Wade Wilson, who after being subjected to a rogue experiment that leaves him with accelerated healing powers, adopts the alter ego Deadpool. Armed with his new abilities and a dark, twisted sense of humor, Deadpool hunts down the man who nearly destroyed his life.")

Categorization.create!(movie: movie1, genre: action)
Categorization.create!(movie: movie1, genre: superhero)

10.times.map do
  movie1.ratings.create(value: rand(10) + 1, user: users.sample)
end

3.times.map do
  movie1.reviews.create!(title: Faker::Hipster.sentence(4), content: Faker::Hipster.paragraph(2), user: users.sample)
end

3.times.map do
  movie1.comments.create!(content: Faker::Hipster.paragraph, user: users.sample)
end


movie2= Movie.create!(title: "Mad Max: Fury Road", release_year: 2015, image_url: "http://image.tmdb.org/t/p/w130/kqjL17yufvn9OVLyXYpvtyrFfak.jpg", synopsis: "An apocalyptic story set in the furthest reaches of our planet, in a stark desert landscape where humanity is broken, and most everyone is crazed fighting for the necessities of life. Within this world exist two rebels on the run who just might be able to restore order. There's Max, a man of action and a man of few words, who seeks peace of mind following the loss of his wife and child in the aftermath of the chaos. And Furiosa, a woman of action and a woman who believes her path to survival may be achieved if she can make it across the desert back to her childhood homeland.")

Categorization.create!(movie: movie2, genre: action)
Categorization.create!(movie: movie2, genre: suspense)

10.times.map do
  movie2.ratings.create(value: rand(10) + 1, user: users.sample)
end

3.times.map do
  movie2.reviews.create!(title: Faker::Hipster.sentence(4), content: Faker::Hipster.paragraph(2), user: users.sample)
end

3.times.map do
  movie2.comments.create!(content: Faker::Hipster.paragraph, user: users.sample)
end

movie3 = Movie.create!(title: "Megamind", release_year: 2010, image_url: "http://image.tmdb.org/t/p/w130/amXAUSAUrnGuLGEyc1ZNhBvgbnF.jpg", synopsis: "Bumbling supervillain Megamind finally defeats his nemesis, the superhero Metro Man. But without a hero, he loses all purpose and must find new meaning to his life.")

Categorization.create!(movie: movie3, genre: comedy)

10.times.map do
  movie3.ratings.create(value: rand(10) + 1, user: users.sample)
end

3.times.map do
  movie3.reviews.create!(title: Faker::Hipster.sentence(4), content: Faker::Hipster.paragraph(2), user: users.sample)
end

3.times.map do
  movie3.comments.create!(content: Faker::Hipster.paragraph, user: users.sample)
end


movie4 = Movie.create!(title: "Jurassic World", release_year: 2015, image_url: "http://image.tmdb.org/t/p/w130/jjBgi2r5cRt36xF6iNUEhzscEcb.jpg", synopsis: "Twenty-two years after the events of Jurassic Park, Isla Nublar now features a fully functioning dinosaur theme park, Jurassic World, as originally envisioned by John Hammond.")

Categorization.create!(movie: movie4, genre: action)

10.times.map do
  movie4.ratings.create(value: rand(10) + 1, user: users.sample)
end

3.times.map do
  movie4.reviews.create!(title: Faker::Hipster.sentence(4), content: Faker::Hipster.paragraph(2), user: users.sample)
end

3.times.map do
  movie4.comments.create!(content: Faker::Hipster.paragraph, user: users.sample)
end


movie5 = Movie.create!(title: "The Revenant", release_year: 2015, image_url: "http://image.tmdb.org/t/p/w130/5W794ugjRwYx6IdFp1bXJqqMWRg.jpg", synopsis: "In the 1820s, a frontiersman, Hugh Glass, sets out on a path of vengeance against those who left him for dead after a bear mauling.")

Categorization.create!(movie: movie5, genre: historical)
Categorization.create!(movie: movie5, genre: thriller)

10.times.map do
  movie5.ratings.create(value: rand(10) + 1, user: users.sample)
end

3.times.map do
  movie5.reviews.create!(title: Faker::Hipster.sentence(4), content: Faker::Hipster.paragraph(2), user: users.sample)
end

3.times.map do
  movie5.comments.create!(content: Faker::Hipster.paragraph, user: users.sample)
end


movie6 = Movie.create!(title: "Zootopia", release_year: 2016, image_url: "http://image.tmdb.org/t/p/w130/yUo6zAVRBRN6u76AaODDGh6gweJ.jpg", synopsis: "In the animal city of Zootopia, a fast-talking fox who's trying to make it big goes on the run when he's framed for a crime he didn't commit. Zootopia's top cop, a self-righteous rabbit, is hot on his tail, but when both become targets of a conspiracy, they're forced to team up and discover even natural enemies can become best friends.")

Categorization.create!(movie: movie6, genre: childrens)
Categorization.create!(movie: movie6, genre: comedy)

10.times.map do
  movie6.ratings.create(value: rand(10) + 1, user: users.sample)
end

3.times.map do
  movie6.reviews.create!(title: Faker::Hipster.sentence(4), content: Faker::Hipster.paragraph(2), user: users.sample)
end

3.times.map do
  movie6.comments.create!(content: Faker::Hipster.paragraph, user: users.sample)
end


movie7 = Movie.create!(title: "Austin Powers: The Spy Who Shagged Me", release_year: 1999, image_url: "http://image.tmdb.org/t/p/w130/yhg0l1Ddd2thQOSUUQx9jBrGI12.jpg", synopsis: "When diabolical genius Dr. Evil travels back in time to steal superspy Austin Powers's \"mojo,\" Austin must return to the swingin' '60s himself -- with the help of American agent Felicity Shagwell -- to stop the dastardly plan. Once there, Austin faces off against Dr. Evil's army of minions and saves the world in his own unbelievably groovy way.")

Categorization.create!(movie: movie7, genre: romance)
Categorization.create!(movie: movie7, genre: comedy)

10.times.map do
  movie7.ratings.create(value: rand(10) + 1, user: users.sample)
end

3.times.map do
  movie7.reviews.create!(title: Faker::Hipster.sentence(4), content: Faker::Hipster.paragraph(2), user: users.sample)
end

3.times.map do
  movie7.comments.create!(content: Faker::Hipster.paragraph, user: users.sample)
end


movie8 = Movie.create!(title: "The Martian", release_year: 2015, image_url: "http://image.tmdb.org/t/p/w130/5aGhaIHYuQbqlHWvWYqMCnj40y2.jpg", synopsis: "During a manned mission to Mars, Astronaut Mark Watney is presumed dead after a fierce storm and left behind by his crew. But Watney has survived and finds himself stranded and alone on the hostile planet. With only meager supplies, he must draw upon his ingenuity, wit and spirit to subsist and find a way to signal to Earth that he is alive.")

Categorization.create!(movie: movie8, genre: sci)
Categorization.create!(movie: movie8, genre: drama)

10.times.map do
  movie8.ratings.create(value: rand(10) + 1, user: users.sample)
end

3.times.map do
  movie8.reviews.create!(title: Faker::Hipster.sentence(4), content: Faker::Hipster.paragraph(2), user: users.sample)
end

3.times.map do
  movie8.comments.create!(content: Faker::Hipster.paragraph, user: users.sample)
end


movie9 = Movie.create!(title: "Fight Club", release_year: 1999, image_url: "http://image.tmdb.org/t/p/w130/811DjJTon9gD6hZ8nCjSitaIXFQ.jpg", synopsis: "A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground fight clubs forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.")

Categorization.create!(movie: movie9, genre: romance)
Categorization.create!(movie: movie9, genre: drama)

10.times.map do
  movie9.ratings.create(value: rand(10) + 1, user: users.sample)
end

3.times.map do
  movie9.reviews.create!(title: Faker::Hipster.sentence(4), content: Faker::Hipster.paragraph(2), user: users.sample)
end

3.times.map do
  movie9.comments.create!(content: Faker::Hipster.paragraph, user: users.sample)
end


movie10 = Movie.create!(title: "The Lego Movie", release_year: 2014, image_url: "http://image.tmdb.org/t/p/w130/5aGhaIHYuQbqlHWvWYqMCnj40y2.jpg", synopsis: "An ordinary Lego mini-figure, mistakenly thought to be the extraordinary MasterBuilder, is recruited to join a quest to stop an evil Lego tyrant from gluing the universe together.")

Categorization.create!(movie: movie10, genre: animated)
Categorization.create!(movie: movie10, genre: comedy)

10.times.map do
  movie10.ratings.create(value: rand(10) + 1, user: users.sample)
end

3.times.map do
  movie10.reviews.create!(title: Faker::Hipster.sentence(4), content: Faker::Hipster.paragraph(2), user: users.sample)
end

3.times.map do
  movie10.comments.create!(content: Faker::Hipster.paragraph, user: users.sample)
end


reviews = Review.all

reviews.each do |review|

  3.times.map do
    review.ratings.create(value: rand(10) + 1, user: users.sample)
  end

  3.times.map do
    review.comments.create!(content: Faker::Hipster.paragraph, user: users.sample)
  end

end