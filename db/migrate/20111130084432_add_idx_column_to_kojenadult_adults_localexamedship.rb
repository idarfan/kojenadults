class AddIdxColumnToKojenadultAdultsLocalexamedship < ActiveRecord::Migration
  def self.up
    add_column :kojenadult_adults_localexamedships, :kojenadult_id, :integer
    add_column :kojenadult_adults_localexamedships, :adults_localexamed_id, :integer
    add_index  :kojenadult_adults_localexamedships, [:kojenadult_id, :adults_localexamed_id], :name => "kojenadult_id and adults_localexamed_id",
      :unique => true     
  end

  def self.down
    remove_column :kojenadult_adults_localexamedships, :kojenadult_id
    remove_column :kojenadult_adults_localexamedships, :adults_localexamed_id
    remove_index :kojenadult_adults_localexamedships, :name => "kojenadult_id and adults_localexamed_id"      
  end
end