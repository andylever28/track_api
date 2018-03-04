class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.references :game, foreign_key: true
      t.references :league, foreign_key: true
      t.string :city
      t.string :name
      t.string :abbreviation

      t.timestamps
    end
  end
end
