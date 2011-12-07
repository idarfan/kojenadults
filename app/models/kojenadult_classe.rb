class KojenadultClasse < ActiveRecord::Base
  has_many :kojenadults_classe_ship
  has_many :kojenadult, :through => :kojenadults_classe_ship
end