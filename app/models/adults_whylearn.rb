class AdultsWhylearn < ActiveRecord::Base
  has_many :kojenadult_adults_whylearnship
  has_many :kojenadult, :through => :kojenadult_adults_whylearnship
end