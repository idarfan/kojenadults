class AddAddressTwoColumnToKojenadults < ActiveRecord::Migration
  def self.up
    #add_column :kojenadults, :parents_address, :string    
  end

  def self.down
    remove_column :kojenadults, :parents_address    
  end
end
#20120329115412