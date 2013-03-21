class AddSomethingToCargos < ActiveRecord::Migration
  def change
    add_column :cargos, :flight_id, :integer
  end
end
