class AddIdxColumnToKojenadultAdultsWhatexamedship < ActiveRecord::Migration
 def self.up
    add_column :kojenadult_adults_whatexamedships, :kojenadult_id, :integer
    add_column :kojenadult_adults_whatexamedships, :adults_whatexamed_id, :integer
    add_index  :kojenadult_adults_whatexamedships, [:kojenadult_id, :adults_whatexamed_id], :name => "kojenadult_id and adults_whatexamed_id",
      :unique => true     
  end

  def self.down
    remove_column :kojenadult_adults_whatexamedships, :kojenadult_id
    remove_column :kojenadult_adults_whatexamedships, :adults_whatexamed_id
    remove_index :kojenadult_adults_whatexamedships, :name => "kojenadult_id and adults_whatexamed_id"      
  end
end