class AdultsGraduated < ActiveRecord::Base
  has_many :kojenadult_adults_graduatedship
  has_many :kojenadult, :through => :kojenadult_adults_graduatedship
end