class ChangeKojenadultIdToBigint < ActiveRecord::Migration
  def self.up
  	change_column :kojenadults, :student_id, :bigint
  end

  def self.down
  	change_column :kojenadults, :student_id, :int  
  end
end
#change kojenadults student_id int column to bigint column by idarfan 2013/10/31