class CreateAdultsLocalexameds < ActiveRecord::Migration
  def self.up
    create_table :adults_localexameds do |t|
      t.string :reason_desc

      t.timestamps
    end
  end

  def self.down
    drop_table :adults_localexameds
  end
end
