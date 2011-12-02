class CreateKojenadultAdultsHowyouknowuships < ActiveRecord::Migration
  def self.up
    create_table :kojenadult_adults_howyouknowuships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :kojenadult_adults_howyouknowuships
  end
end
