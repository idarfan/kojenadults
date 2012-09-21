class CreateAdultsOnlines < ActiveRecord::Migration
  def self.up
    create_table :adults_onlines do |t|
      t.string :reason_desc

      t.timestamps
    end
  end

  def self.down
    drop_table :adults_onlines
  end
end
