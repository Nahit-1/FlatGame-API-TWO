class GamesController < ApplicationController
    def index 
        @game = Game.all
        render json: Game.all
    end 

    def show 
        game = Game.find_by(id: params[:id])
        if 
            render json: game
        else 
            render json: {error: 'Game not found.'}, status: 404 
        end 

    
    end 

    def feedbacks 
        game = Game.find_by(id: params[:id])
        if game 
            render json: game.feedbacks
        else 
            render json: {error: 'Game not found.'}, status: 404
        end 

    end     

    # def rate
    #     game = Game.find_by(id: params[:game_id])
    #     if game
    #         # game.rating += 1
    #         # game.save 
    #         game.update(rating: game.rating + 1)
    #         render json: game
    #     else
    #         render json: {error: 'Game not found.'}, status: 404
    #     end 
    # end
end

# fetch('http://localhost:3001/rate', {
#     method: 'POST',
#     headers: { 'Content-Type': 'application/json'},
#     body: JSON.stringify({ game_id: Game.last })
# })