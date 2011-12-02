class CreateKojenadultAdultsGraduatedships < ActiveRecord::Migration
  def self.up
    create_table :kojenadult_adults_graduatedships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :kojenadult_adults_graduatedships
  end
end
