class CreateAdultsSessionDescriptions < ActiveRecord::Migration
  def self.up
    create_table :adults_session_descriptions do |t|
      t.string :classname
      t.string :class_description

      t.timestamps
    end
  end

  def self.down
    drop_table :adults_session_descriptions
  end
end
