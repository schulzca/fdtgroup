class CreateOsesProducts < ActiveRecord::Migration
  def self.up
    create_table :oses_products do |t|
      t.integer :os_id
      t.integer :product_id

      t.timestamps
    end
  end

  def self.down
    drop_table :oses_products
  end
end
