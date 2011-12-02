# encoding: utf-8
class AddIdxColumnToKojenadultAdultsGraduatedship < ActiveRecord::Migration
  def self.up
    add_column :kojenadult_adults_graduatedships, :kojenadult_id, :integer
    add_column :kojenadult_adults_graduatedships, :adults_graduated_id, :integer
    add_index  :kojenadult_adults_graduatedships, [:kojenadult_id, :adults_graduated_id], :name => "kojenadult_id and adults_graduated_id",
      :unique => true     
  end

  def self.down
    remove_column :kojenadult_adults_graduatedships, :kojenadult_id
    remove_column :kojenadult_adults_graduatedships, :adults_graduated_id
    remove_index :kojenadult_adults_graduatedships, :name => "kojenadult_id and adults_graduated_id"      
  end
end