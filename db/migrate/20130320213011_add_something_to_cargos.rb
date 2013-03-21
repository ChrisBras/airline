class AddSomethingToCargos < ActiveRecord::Migration
  def change
    create_table :cargos do |t|
      t.integer :weight
      t.string :contents
      t.references :flight

      t.timestamps
    end
    add_index :cargos, :flight_id
  end
end

