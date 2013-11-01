class CreateLessonrecords < ActiveRecord::Migration
  def self.up
    create_table :lessonrecords do |t|
      t.integer :kojenadult_id	
      t.string :cname
      t.string :ename        
      t.integer :student_id, :limit => 8  
      t.string :lesson
      t.date :start_period
      t.date :end_period

      t.timestamps
    end
  end

  def self.down
    drop_table :lessonrecords
  end
end