class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :manufacturer_id
      t.integer :protocol_id
      t.integer :os_id
      t.integer :device_type_id
      t.string :device_version
      t.string :dtm_version
      t.string :specification

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
