class FixPasswordFieldsInUser < ActiveRecord::Migration
  def self.up
    remove_column :users, :password
    remove_column :users, :password_hash
    remove_column :users, :confirm_password
    add_column :users, :password_digest, :string
  end

  def self.down
  end
end
