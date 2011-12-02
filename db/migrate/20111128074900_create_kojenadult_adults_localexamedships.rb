class CreateKojenadultAdultsLocalexamedships < ActiveRecord::Migration
  def self.up
    create_table :kojenadult_adults_localexamedships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :kojenadult_adults_localexamedships
  end
end
