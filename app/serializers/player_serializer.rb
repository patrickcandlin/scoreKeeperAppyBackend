class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email, :first_name, :last_name, :sex, :player_ability_rating, :matches, :player_matches
end
