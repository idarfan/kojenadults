class AddAdultsUnitColumnToKojenadults < ActiveRecord::Migration
  def self.up
    add_column :kojenadults, :adults_unit, :string
  end

  def self.down
    remove_column :kojenadults, :adults_unit
  end
end
