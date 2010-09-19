class CreateDeads < ActiveRecord::Migration
  def self.up
    create_table :deads do |t|
      t.date :datum
      t.integer :nummer
      t.integer :abteil
      t.integer :gewicht
      t.string :grund

      t.timestamps
    end
  end

  def self.down
    drop_table :deads
  end
end
