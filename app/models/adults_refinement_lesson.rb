class AdultsRefinementLesson < ActiveRecord::Base  
  has_many :kojenadult_adults_refinement_lessonship, :dependent => :destroy
  has_many :adults_refinement_lesson, :through => :kojenadult_adults_refinement_lessonship
end