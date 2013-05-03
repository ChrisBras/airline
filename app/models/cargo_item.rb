class CargoItem < ActiveRecord::Base
  belongs_to :cargo
  attr_accessible :order_id, :cargo_id

  validates :order_id, :cargo_id, presence: :true
end
