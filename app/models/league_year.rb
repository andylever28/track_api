class LeagueYear < ApplicationRecord
  belongs_to :league
  has_many :game
end
