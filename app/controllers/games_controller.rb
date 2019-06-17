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
end