class AddClassnumberColumnToKojenadultclasses < ActiveRecord::Migration
  def self.up
  	add_column :kojenadult_classes, :classnumber, :string    
  end

  def self.down
    remove_column :kojenadult_classes, :classnumber   
  end  
end