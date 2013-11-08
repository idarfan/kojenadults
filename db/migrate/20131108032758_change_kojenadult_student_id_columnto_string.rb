class ChangeKojenadultStudentIdColumntoString < ActiveRecord::Migration
 def self.up
      change_column :lessonrecords, :student_id, :string
  end

  def self.down
      change_column :lessonrecords, :student_id, :bigint  
  end
end
#adding by idarfan 2013/11/08