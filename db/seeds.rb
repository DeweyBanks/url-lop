# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

links = Link.create([
  {given_url: "google.com", clicks: rand(100)},
  {given_url: "yahoo.com", clicks: rand(100)},
  {given_url: "imdb.com", clicks: rand(100)},
  {given_url: "dewey.com", clicks: rand(100)},
  {given_url: "facbook.com", clicks: rand(100)},
  {given_url: "linkedin.com", clicks: rand(100)},
  {given_url: "github.com", clicks: rand(100)},
  {given_url: "netflix.com", clicks: rand(100)},
  {given_url: "http://www.fxnetworks.com/shows/baskets", clicks: rand(100)},
  {given_url: "http://www.amc.com/shows/the-walking-dead", clicks: rand(100)},
  {given_url: "http://vfemmes.com", clicks: rand(100)},
  {given_url: "http://ween.com", clicks: rand(100)},
  {given_url: "https://survey-constructor.herokuapp.com", clicks: rand(100)},
  {given_url: "https://illcreative.com", clicks: rand(100)},
  {given_url: "https://www.olly.com", clicks: rand(100)},
  {given_url: "https://www.alktheatercompany.com", clicks: rand(100)},
  {given_url: "youtube.com", clicks: rand(100)},
  {given_url: "https://www.thetoptens.com/", clicks: rand(100)},
  {given_url: "https://www.wikipedia.org", clicks: rand(100)},
  {given_url: "amazon.com", clicks: rand(100)},
  {given_url: "twitter.com", clicks: rand(100)},
  {given_url: "reddit.com", clicks: rand(100)},
  {given_url: "instagram.com", clicks: rand(100)},
  {given_url: "ebay.com", clicks: rand(100)},
  ])
