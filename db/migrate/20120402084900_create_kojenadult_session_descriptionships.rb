class CreateKojenadultSessionDescriptionships < ActiveRecord::Migration
  def self.up
    create_table :kojenadult_session_descriptionships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :kojenadult_session_descriptionships
  end
end
