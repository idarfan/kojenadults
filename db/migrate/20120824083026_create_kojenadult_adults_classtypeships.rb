class CreateKojenadultAdultsClasstypeships < ActiveRecord::Migration
  def self.up
    create_table :kojenadult_adults_classtypeships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :kojenadult_adults_classtypeships
  end
end
