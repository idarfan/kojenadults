class AdultsClasstype < ActiveRecord::Base  
  has_many :kojenadult_adults_classtypeship
  has_many :kojenadult, :through => :kojenadult_adults_classtypeship
end