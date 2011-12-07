class AddColumnToKojenadultsPart2 < ActiveRecord::Migration
 def self.up
    add_column :kojenadults, :road_name, :string    
  end

  def self.down
    remove_column :kojenadults, :road_name    
  end
end