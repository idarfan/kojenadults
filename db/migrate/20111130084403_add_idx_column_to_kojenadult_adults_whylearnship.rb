class AddIdxColumnToKojenadultAdultsWhylearnship < ActiveRecord::Migration
  def self.up
    add_column :kojenadult_adults_whylearnships, :kojenadult_id, :integer
    add_column :kojenadult_adults_whylearnships, :adults_whylearn_id, :integer
    add_index  :kojenadult_adults_whylearnships, [:kojenadult_id, :adults_whylearn_id], :name => "kojenadult_id and adults_whylearn_id",
      :unique => true     
  end

  def self.down
    remove_column :kojenadult_adults_whylearnships, :kojenadult_id
    remove_column :kojenadult_adults_whylearnships, :adults_whylearn_id
    remove_index :kojenadult_adults_whylearnships, :name => "kojenadult_id and adults_whylearn_id"      
  end
end