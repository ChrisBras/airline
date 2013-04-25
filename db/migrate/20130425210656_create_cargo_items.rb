class CreateCargoItems < ActiveRecord::Migration
  def change
    create_table :cargo_items do |t|
      t.integer :order_id
      t.references :cargo

      t.timestamps
    end
    add_index :cargo_items, :cargo_id
  end
end
