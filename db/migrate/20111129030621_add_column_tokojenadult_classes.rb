class AddColumnTokojenadultClasses < ActiveRecord::Migration
  def self.up    
    add_column :kojenadult_classes, :community_id, :string
    add_column :kojenadult_classes, :student_id, :integer
    end  

  def self.down
    remove_column :kojenadult_classes, :community_id
    remove_column :kojenadult_classes, :student_id
  end
end