class AlterCargos < ActiveRecord::Migration
  def up
    drop_table :cargos
  end

  def down
  end
end
