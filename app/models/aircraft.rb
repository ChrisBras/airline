class Aircraft < ActiveRecord::Base
  attr_accessible :aircraft_type, :air_crew_id, :fuel, :tail_number
  belongs_to :air_crew
  validates :air_crew, presence: true
end
