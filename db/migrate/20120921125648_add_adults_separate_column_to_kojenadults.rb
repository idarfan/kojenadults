class AddAdultsSeparateColumnToKojenadults < ActiveRecord::Migration
  def self.up
    add_column :kojenadults, :adults_separate, :string
  end

  def self.down
    remove_column :kojenadults, :adults_separate, :string
  end
end
