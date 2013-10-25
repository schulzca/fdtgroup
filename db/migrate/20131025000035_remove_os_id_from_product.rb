class RemoveOsIdFromProduct < ActiveRecord::Migration
  def self.up
    remove_column :products, :os_id
  end

  def self.down
  end
end
