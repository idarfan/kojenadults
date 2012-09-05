class AddAdultsRefinementlessonColumnToKojenadults < ActiveRecord::Migration
  def self.up
    add_column :kojenadults, :adults_refinementlesson, :string
  end

  def self.down
     remove_column :kojenadults, :adults_refinementlesson
  end
end