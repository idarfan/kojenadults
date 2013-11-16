class AddRegedColumnToKojenadults < ActiveRecord::Migration
  def change
  	add_column :kojenadults, :reged, :boolean, :default => false
  end
end
