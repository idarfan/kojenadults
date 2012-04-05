class AdultsSessionDescription < ActiveRecord::Base
  has_many :kojenadult_session_descriptionship
  has_many :kojenadult, :through => :kojenadult_session_descriptionship
end