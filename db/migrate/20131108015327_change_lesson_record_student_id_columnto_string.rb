class ChangeLessonRecordStudentIdColumntoString < ActiveRecord::Migration  
  def self.up
      change_column :kojenadults, :student_id, :string
  end

  def self.down
      change_column :kojenadults, :student_id, :bigint  
  end
end
#change kojenadults student_id bigint column to bigint column by idarfan 2013/11/08