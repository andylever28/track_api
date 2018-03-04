class Game < ApplicationRecord
  belongs_to :league_year
  has_many :teams
end
