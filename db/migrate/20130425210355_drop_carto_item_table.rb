class DropCartoItemTable < ActiveRecord::Migration
  def up
    drop_table :cargo_items
  end

  def down
  end
end
