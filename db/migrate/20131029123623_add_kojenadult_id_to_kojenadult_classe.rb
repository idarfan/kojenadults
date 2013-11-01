class AddKojenadultIdToKojenadultClasse < ActiveRecord::Migration
  def self.up
    add_column :kojenadult_classes, :kojenadult_id, :integer
  end

  def self.down
    remove_column :kojenadult_classes, :kojenadult_id
  end
end
