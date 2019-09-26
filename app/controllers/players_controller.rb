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
        new_player = Player.create(player_params)
        render json: PlayerSerializer.new(new_player)
    end

    private

    def player_params
        params.require(:player).permit(:first_name, :last_name, :birth_date, :player_ability_rating, :sex, :email)
    end
end
