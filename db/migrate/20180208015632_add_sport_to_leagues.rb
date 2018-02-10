class AddSportToLeagues < ActiveRecord::Migration[5.0]
  def change
    add_reference :leagues, :sport, foreign_key: true
  end
end
