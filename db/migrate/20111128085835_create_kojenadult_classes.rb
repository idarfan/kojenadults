class CreateKojenadultClasses < ActiveRecord::Migration
  def self.up
    create_table :kojenadult_classes do |t|
      t.string :level
      t.date :start_period
      t.decimal :test_fee
      t.date :end_period
      t.decimal :tuition
      t.string :repeat
      t.decimal :withdraw
      t.string :postpone
      t.decimal :scholarship
      t.string :remarks

      t.timestamps
    end
  end

  def self.down
    drop_table :kojenadult_classes
  end
end