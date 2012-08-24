class AddAdultsClasstypeColumnToKojenadults < ActiveRecord::Migration
  def self.up
    add_column :kojenadults, :adults_classtype, :string
  end

  def self.down
     remove_column :kojenadults, :adults_classtype
  end
end