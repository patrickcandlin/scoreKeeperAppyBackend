class MatchSerializer
  include FastJsonapi::ObjectSerializer
  attributes :discription, :match_time, :completed, :score, :players

end
