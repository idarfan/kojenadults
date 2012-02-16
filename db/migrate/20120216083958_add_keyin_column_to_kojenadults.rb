class AddKeyinColumnToKojenadults < ActiveRecord::Migration
  def self.up
    add_column :kojenadults, :keyin, :string  
  end

  def self.down
     remove_column :kojenadults, :keyin
  end
end