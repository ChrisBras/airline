class ChangeDestinationInFlights < ActiveRecord::Migration
  def up
    change_column :flights, :arrival, :timestamp
    change_column :flights, :departure, :timestamp
  end

  def down
    change_column :flights, :arrival, :time
    change_column :flights, :departure, :time
  end
end
