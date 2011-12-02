class AdultsHowyouknowu < ActiveRecord::Base
  has_many :kojenadult_adults_howyouknowuship
  has_many :kojenadult, :through => :kojenadult_adults_howyouknowuship
end
