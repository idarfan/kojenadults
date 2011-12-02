# encoding: utf-8
class AddIdxColumnToKojenadultAdultsHowyouknowuship < ActiveRecord::Migration
  def self.up
    add_column :kojenadult_adults_howyouknowuships, :kojenadult_id, :integer
    add_column :kojenadult_adults_howyouknowuships, :adults_howyouknowu_id, :integer
    add_index  :kojenadult_adults_howyouknowuships, [:kojenadult_id, :adults_howyouknowu_id], :name => "kojenadult_id and adults_howyouknowu_id",
      :unique => true     
  end

  def self.down
    remove_column :kojenadult_adults_howyouknowuships, :kojenadult_id
    remove_column :kojenadult_adults_howyouknowuships, :adults_howyouknowu_id
    remove_index :kojenadult_adults_howyouknowuships, :name => "kojenadult_id and adults_howyouknowu_id"      
  end
end