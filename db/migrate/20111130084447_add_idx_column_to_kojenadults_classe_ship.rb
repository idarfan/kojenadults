class AddIdxColumnToKojenadultsClasseShip < ActiveRecord::Migration
  def self.up
    add_column :kojenadults_classe_ships, :kojenadult_id, :integer
    add_column :kojenadults_classe_ships, :kojenadult_classe_id, :integer
    add_index  :kojenadults_classe_ships, [:kojenadult_id, :kojenadult_classe_id], :name => "kojenadult_id and kojenadult_classe_id",
      :unique => true     
  end

  def self.down
    remove_column :kojenadults_classe_ships, :kojenadult_id
    remove_column :kojenadults_classe_ships, :kojenadult_classe_id
    remove_index :kojenadults_classe_ships, :name => "kojenadult_id and kojenadult_classe_id"      
  end
end