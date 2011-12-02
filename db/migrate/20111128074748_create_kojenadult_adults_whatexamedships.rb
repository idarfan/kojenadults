class CreateKojenadultAdultsWhatexamedships < ActiveRecord::Migration
  def self.up
    create_table :kojenadult_adults_whatexamedships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :kojenadult_adults_whatexamedships
  end
end
