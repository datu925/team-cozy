# team-cozy
## client project

#Team members
Dan Turcza, datu925
Tiffany Larson, TSLarson
Catie Stallings, cstallings1
Lauren Reid, tomorrow-lauren

##Description
This project will create a clone of IMDB allowing for movie reviews.

##How to install
(TBD)

##How to use
(TBD)



##Questions for client

- Should we be live-querying a movie site like IMDB, seeding from an existing database, or populating fictional movies/reviews, etc.?
Hardcode some data.
- What is the expectation for user interface? Is there a specific design we're aiming for?
(see wireframes)
- Movies and TV and showtimes? Just movies? What's the basic scope?
Just movies
- How much metadata do we need on each movie?
 Title, release year, image_url, whether it's fresh/rotten, high-level synopsis
 Number of good votes and bad votes
value
- What kinds of restrictions and kinds of reviews can users leave?
- What other functionality should be available to the user? (e.g. polls, favorites, subscribing to other users' lists)
- What kind of authorization do we need/what kind of user system?
- Are there other explicit features we want to define (e.g. top 250 lists)? Polls?
- Are there services from other websites you want us to use?
- Are there email communications we should send to the user?
- Of the above, what are the most important features that must be in the MVP?
- Checking in with client
-- How do you want to see progress?
Mid-day, end-of-day check-in. Client reviews before it is marked down; just ask to come over
Free except before lunch on Wed (dr's apptment)
-- How frequently would you like to check in? Under what circumstances?
-- What do you expect to see on Trello?
- Demo
-- What would you like to see us demo in particular?
-- What would you like to see as pie-in-the-sky features that we can't promise but will try to get to?

#General notes

- Users & authentication. Some users are trusted reviewers
- homepage has a list of public films - like 10 films
- each film has some reviews written only by trusted reviewers; but basic can do reviews too
- more like rotten tomatoes
- review is content and a good-bad flag
- films belong to genres. Should be able to see the latest reviews and the latest reviews by genre
- users should be able to rate and comment reviews and rate and comment on films
- films should have average ratings and reviews should be sorted by average rating
- public list of films should be the top 10 films with the highest average rating
  - no need to worry about current films, older films, etc.
- if logged in, can review/rate/comment on a film
- toggles on a film page if you're logged in to add those things
- not much of a profile page required; AJAX form on the movie page for a review; same with comments
- bright color scheme; bootswatch - has all the themes. Bootstrap optional.
- search for a movie by title - goes to search results page (maybe fuzzy match?)

##Questions for team lead
 - Say more about this "fork" git workflow


##Team norms

- Check-ins frequently: morning, after lunch, before departure
- Communicating about pushing code/adhering to git flow
- particularly, peer-reviewed merging of pull requests
- merges happen with whole team
- tests: at the beginning is ideal; definitely by the end (models + features)
- getting stuck: solicit team members or instructor help after 20-30 minutes
- know what we're working on (use Trello) with constant communication
- unofficial check-ins anytime for any reason (kaizen rope pull)
- aspire to spend some time at EOD refactoring existing code
- continuous, direct, recent feedback
- work-life balance: lunches are free, no expectations outside core hours
- no swears in pull requests
