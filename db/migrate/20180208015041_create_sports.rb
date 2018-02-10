class CreateSports < ActiveRecord::Migration[5.0]
  def up
    create_table :sports do |t|
      t.string :name

      t.timestamps
    end

    def down 
      drop_table :sports
    end 
  end
end
