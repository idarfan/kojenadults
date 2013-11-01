class ChangeKojenclasseStudentIdToBigint < ActiveRecord::Migration
  def self.up
  	change_column :kojenadult_classes, :student_id, :bigint
  end

  def self.down
  	change_column  :kojenadult_classes, :student_id, :int  
  end
end
#change kojenadult_classes student_id int column to bigint column