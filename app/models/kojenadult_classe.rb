class KojenadultClasse < ActiveRecord::Base
  set_table_name "kojenadult_classes"   
  has_many :kojenadults_classe_ship
  has_many :kojenadult, :through => :kojenadults_classe_ship
end