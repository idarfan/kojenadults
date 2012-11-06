class AddSchoolnameColumnToUsers < ActiveRecord::Migration
   def self.up
    add_column :users, :schoolname, :string
  end

  def self.down
    remove_column :user, :schoolname, :string
  end
end
