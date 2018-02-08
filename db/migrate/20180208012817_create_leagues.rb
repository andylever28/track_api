class CreateLeagues < ActiveRecord::Migration[5.0]
  
  def up
    create_table :leagues do |t|
      t.string :name
      t.string :abbreviation
      t.string :level

      t.timestamps
    end
    
    def down
      drop_table :leagues
    end

  end
end
