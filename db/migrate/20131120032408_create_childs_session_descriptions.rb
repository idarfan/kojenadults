class CreateChildsSessionDescriptions < ActiveRecord::Migration
  def change
    create_table :childs_session_descriptions,  :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8'  do |t|
      t.string :classname
      t.string :class_description

      t.timestamps
    end
  end
end
