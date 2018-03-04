class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.references :league_year, foreign_key: true
      t.integer :home_team_id
      t.integer :away_team_id
      t.datetime :game_date
      t.string :api_url

      t.timestamps
    end
  end
end
