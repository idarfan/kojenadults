class CreateKojenadultsClasseShips < ActiveRecord::Migration
  def self.up
    create_table :kojenadults_classe_ships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :kojenadults_classe_ships
  end
end
