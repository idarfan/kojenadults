class AdultsWhatexamed < ActiveRecord::Base
  has_many :kojenadult_adults_whatexamedship
  has_many :kojenadult, :through => :kojenadult_adults_whatexamedship
end