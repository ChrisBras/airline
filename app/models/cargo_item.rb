class CargoItem < ActiveRecord::Base
  belongs_to :cargo
  attr_accessible :order_id, :cargo_id
end
