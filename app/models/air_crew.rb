class AirCrew < ActiveRecord::Base
  attr_accessible :navigator, :pilot
  has_one :aircraft
end
