class PlayersController < ApplicationController
    def index
        players = Player.all
        render json: PlayerSerializer.new(players)
    end

    def show
        player = Player.find_by(params[:email])
        render json: PlayerSerializer.new(player)
    end

    def create
        new_player = Player.create(
            email: params[:email],
            first_name: params[:first_name],
            last_name: params[:last_name],
            birth_date: params[:birth_date],
            player_ability_rating: params[:player_ability_rating],
            sex: params[:sex]
        )
        render json: PlayerSerializer.new(new_player)
    end
end
