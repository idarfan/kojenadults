class AddAdultsLicenseColumnToKojenadults < ActiveRecord::Migration
  def self.up
     add_column :kojenadults, :adults_license, :string
  end

  def self.down
     remove_column :kojenadults, :adults_license, :string
  end
end
