class CreateSidSchoolNumberSidDateSidNumber < ActiveRecord::Migration
  def change
  	add_column :kojenadults, :student_id_schoolname, :string
  	add_column :kojenadults, :student_id_date, :date
  	add_column :kojenadults, :student_id_serial, :string
  end
end