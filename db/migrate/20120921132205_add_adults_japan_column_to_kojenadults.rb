class AddAdultsJapanColumnToKojenadults < ActiveRecord::Migration
  def self.up
    add_column :kojenadults, :adults_japan, :string
  end

  def self.down
    remove_column :kojenadults, :adults_japan, :string
  end
end
