class AddSchoolnameColumnToKojenadults < ActiveRecord::Migration
  def self.up
    add_column :kojenadults, :schoolname, :string
  end

  def self.down
    remove_column :kojenadults, :schoolname, :string
  end
end
