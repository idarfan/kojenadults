class AddColumnToKojenadults < ActiveRecord::Migration
  def self.up
    add_column :kojenadults, :main_area, :integer, :limit => 1
    add_column :kojenadults, :sub_area, :integer, :limit => 1
  end

  def self.down
    remove_column :kojenadults, :main_area
    remove_column :kojenadults, :sub_area
  end
end