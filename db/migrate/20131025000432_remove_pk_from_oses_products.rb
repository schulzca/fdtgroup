class RemovePkFromOsesProducts < ActiveRecord::Migration
  def self.up
    remove_column :oses_products, :id
  end

  def self.down
  end
end
