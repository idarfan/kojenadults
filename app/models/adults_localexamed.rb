class AdultsLocalexamed < ActiveRecord::Base
  has_many :kojenadult_adults_localexamedship
  has_many :kojenadult, :through => :kojenadult_adults_localexamedship
end