class AddingKeyinAndSchollNameColumnToLessonRecord < ActiveRecord::Migration
 def self.up
    add_column :lessonrecords, :keyin, :string
    add_column :lessonrecords, :schoolname, :string    
  end

  def self.down
    remove_column :lessonrecords, :keyin
    remove_column :lessonrecords, :schoolname
    
  end
end