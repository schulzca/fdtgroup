class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :company_address
      t.string :email
      t.string :username
      t.string :password_hash
      t.string :password
      t.string :confirm_password
      t.boolean :receive_updates
      t.boolean :receive_newsletter

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
