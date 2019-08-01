class Match < ApplicationRecord
    has_many :player_matches
    has_many :players, through: :player_matches
end
