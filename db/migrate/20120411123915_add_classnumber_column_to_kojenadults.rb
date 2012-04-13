class AddClassnumberColumnToKojenadults < ActiveRecord::Migration
  def self.up
    add_column :kojenadults, :classnumber, :string    
  end

  def self.down
    remove_column :kojenadults, :classnumber    
  end
end
#add by idar 2012/4/11 20:41