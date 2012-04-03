class AddIdxColumnToAdultSessionDescription < ActiveRecord::Migration
  def self.up
    add_column :kojenadult_session_descriptionships, :kojenadult_id, :integer
    add_column :kojenadult_session_descriptionships, :adults_session_description_id, :integer
    add_index  :kojenadult_session_descriptionships, [:kojenadult_id, :adults_session_description_id], :name => "kojenadult_id and adults_session_description_id",
      :unique => true
  end

  def self.down     
    remove_column :kojenadult_session_descriptionships, :kojenadult_id
    remove_column :kojenadult_session_descriptionships, :adults_session_description_id
    remove_index  :kojenadult_session_descriptionships, :name => "kojenadult_id and adults_session_description_id" 
  end
end