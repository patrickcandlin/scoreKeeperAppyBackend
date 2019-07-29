class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :sex, :player_ability_rating
end
