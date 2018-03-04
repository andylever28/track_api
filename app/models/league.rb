class League < ApplicationRecord
    belongs_to :sport
    has_many :league_years
    has_many :teams
end
