class CreateAircrafts < ActiveRecord::Migration
  def change
    create_table :aircrafts do |t|
      t.integer :tail_number
      t.string :aircraft_type
      t.references :air_crew
      t.integer :fuel

      t.timestamps
    end
    add_index :aircrafts, :air_crew_id
  end
end
