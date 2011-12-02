class KojenadultClasse < ActiveRecord::Base
  has_many :kojenadult_classe_ship
  has_many :kojenadult, :through => :kojenadult_classe_ship
end