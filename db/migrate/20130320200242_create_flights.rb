class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.references :aircraft
      t.references :origin
      t.references :destination
      t.time :departure
      t.time :arrival

      t.timestamps
    end
    add_index :flights, :aircraft_id
    add_index :flights, :origin_id
    add_index :flights, :destination_id
  end
end
