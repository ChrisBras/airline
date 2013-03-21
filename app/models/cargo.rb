class Cargo < ActiveRecord::Base
  attr_accessible :contents, :weight, :flight_id 
  belongs_to :flight
end
