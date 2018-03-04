class AddCurrentLeagueYearIdToLeagues < ActiveRecord::Migration[5.0]
  def up
    add_column :leagues, :current_league_year_id, :int
  end  

  def down    
    remove_column :leagues, :current_league_year_id, :int
  end
end
