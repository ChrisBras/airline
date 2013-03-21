class CorrectColumnsFlights < ActiveRecord::Migration
  def up
    change_column :flights, :destination_id, :integer
    change_column :flights, :origin_id, :integer
    change_column :flights, :departure, :timestamp
    change_column :flights, :arrival, :timestamp
  end

  def down
    change_column :flights, :destination_id, :integer
    change_column :flights, :origin_id, :integer
    change_column :flights, :departure, :timestamp
    change_column :flights, :arrival, :timestamp
  end
end
