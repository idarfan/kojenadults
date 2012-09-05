class AddIdxColumnToKojenadultAdultsRefinementLessonship < ActiveRecord::Migration
  def self.up
    add_column :kojenadult_adults_refinement_lessonships, :kojenadult_id, :integer
    add_column :kojenadult_adults_refinement_lessonships, :adults_refinement_lesson_id, :integer
    add_index  :kojenadult_adults_refinement_lessonships, [:kojenadult_id, :adults_refinement_lesson_id], :name => "kojenadult_id and adults_refinement_lesson_id",
      :unique => true
  end

  def self.down     
    remove_column :kojenadult_adults_refinement_lessonships, :kojenadult_id
    remove_column :kojenadult_adults_refinement_lessonships, :adults_refinement_lesson_id
    remove_index  :kojenadult_adults_refinement_lessonships, :name => "kojenadult_id and adults_refinement_lesson_id"
  end
end