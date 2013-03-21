class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :title

      t.timestamps
    end
  end
end
