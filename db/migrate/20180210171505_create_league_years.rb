class CreateLeagueYears < ActiveRecord::Migration[5.0]
  def change
    create_table :league_years do |t|
      t.references :league, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.string :season_name
      t.string :season_type
      t.boolean :current_season
      t.string :season_year

      t.timestamps
    end
  end
end
