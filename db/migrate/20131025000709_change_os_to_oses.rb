class ChangeOsToOses < ActiveRecord::Migration
  def self.up
    rename_table :os, :oses
  end

  def self.down
  end
end
