class AddAdultsOnlineColumnToKojenadults < ActiveRecord::Migration
  def self.up
    add_column :kojenadults, :adults_online, :string
  end

  def self.down
    remove_column :kojenadults, :adults_online, :string
  end
end
