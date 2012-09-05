class CreateKojenadultAdultsRefinementLessonships < ActiveRecord::Migration
  def self.up
    create_table :kojenadult_adults_refinement_lessonships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :kojenadult_adults_refinement_lessonships
  end
end
