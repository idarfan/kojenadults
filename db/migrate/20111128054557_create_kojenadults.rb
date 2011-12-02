class CreateKojenadults < ActiveRecord::Migration
  def self.up
    create_table :kojenadults do |t|
      t.string :cname
      t.string :ename
      t.string :community_id
      t.integer :student_id
      t.date :birthday
      t.string :gender
      t.string :email
      t.string :address
      t.string :telephone
      t.string :mobile_phone
      t.string :parents_phone
      t.string :jobs
      t.string :company
      t.string :company_address
      t.string :company_phone
      t.string :graduated_other
      t.string :media_other
      t.string :howyouknowus_ohter
      t.string :whylearn_other
      t.string :whatexamed_other
      t.string :contact
      t.text :signature
      t.text :notice_other      

      t.timestamps
    end
  end

  def self.down
    drop_table :kojenadults
  end
end
