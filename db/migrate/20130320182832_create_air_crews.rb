class CreateAirCrews < ActiveRecord::Migration
  def change
    create_table :air_crews do |t|
      t.string :pilot
      t.string :navigator

      t.timestamps
    end
  end
end
