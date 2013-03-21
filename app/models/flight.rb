class Flight < ActiveRecord::Base
  attr_accessible :origin_id, :destination_id, :arrival, :departure, :aircraft_id, :cargo_ids
  belongs_to :aircraft
  belongs_to :origin, class_name: 'Airport'
  belongs_to :destination, class_name: 'Airport'
  has_many :cargos

  validates :aircraft, :origin, :destination, presence: :true
end
