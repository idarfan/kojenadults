class CreateKojenadultAdultsWhylearnships < ActiveRecord::Migration
  def self.up
    create_table :kojenadult_adults_whylearnships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :kojenadult_adults_whylearnships
  end
end
