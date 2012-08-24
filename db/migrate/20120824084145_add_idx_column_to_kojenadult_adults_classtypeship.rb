class AddIdxColumnToKojenadultAdultsClasstypeship < ActiveRecord::Migration
  def self.up
    add_column :kojenadult_adults_classtypeships, :kojenadult_id, :integer
    add_column :kojenadult_adults_classtypeships, :adults_classtype_id, :integer
    add_index  :kojenadult_adults_classtypeships, [:kojenadult_id, :adults_classtype_id], :name => "kojenadult_id and adults_classtype_id",
      :unique => true
  end

  def self.down     
    remove_column :kojenadult_adults_classtypeships, :kojenadult_id
    remove_column :kojenadult_adults_classtypeships, :adults_classtype_id
    remove_index  :kojenadult_adults_classtypeships, :name => "kojenadult_id and adults_classtype_id" 
  end
end
