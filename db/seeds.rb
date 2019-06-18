# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'

Feedback.destroy_all
User.destroy_all
Game.destroy_all


nahit = User.create(username: 'Nahit', email: 'abc@abc.com', password: 'password')
danny = User.create(username: 'Danny', email: 'def@xxx.com', password: 'password')
ivan = User.create(username: 'Ivan', email: '123@hotmail.com', password: 'password')
nico = User.create(username: 'Nico', email: '456@flatiron.com', password: 'password')

# GAME API ENDPOINT
# data['results'][0] this gets the first game g
# data['results'][0]['metacritic'] this gets the metacritic score 
# data['results'][0]['name'] this gets the game name
# data['results'][0]['slug'] this gets the slug name 
# data['results'][0]['genres'][0]['name'] this gets the name of first genre classification 

# games[0] and games[1] does get the right games... 
url = "https://api.rawg.io/api/games?page="

10.times do |number|
	response = RestClient.get("#{url}#{number + 1}")
	data = JSON.parse(response)
    games = data["results"]
    # byebug
    games.each do |game|
		new_game = Game.new(
            name: game["name"],
            slug: game["slug"],
            metacritic: game["metacritic"],
            background_image: game["background_image"],
            rating: game["rating"],
            platform: game['platforms'][0]['platform']['name'],
            genre: game["genres"][0]['name']
        )
        if !new_game.save
            puts new_game.errors.full_messages
        end
	end
end

Feedback.create([
        { content: "10 out of 10... would die again", user: nahit, game: Game.first, rating: 3.9 },
        { content: "I haven't seen my wife in 2 weeks", user: danny, game: Game.first, rating: 4.9 },
        { content: "I got shot by a 6 year old...", user: ivan, game: Game.last, rating: 3.9 }
])

