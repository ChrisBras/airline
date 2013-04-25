class Cargo < ActiveRecord::Base
  attr_accessible :contents, :weight, :flight_id 
  belongs_to :flight
  has_many :cargo_items
end
