class AddSessionFourColumnToKojenadults < ActiveRecord::Migration
  def self.up
    add_column :kojenadults, :session, :string
    add_column :kojenadults, :classtime, :date
    add_column :kojenadults, :session_description, :string
    add_column :kojenadults, :teacher, :string
  end

  def self.down
    remove_column :kojenadults, :session
    remove_column :kojenadults, :classtime
    remove_column :kojenadults, :session_description
    remove_column :kojenadults, :teacher
  end
end
#20120329115412