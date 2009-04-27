class CreateUsersWithClearanceColumns < ActiveRecord::Migration
  def self.up
    create_table(:users) do |t|
      t.string   :email
      t.string   :encrypted_password, :limit => 128
      t.string   :salt,               :limit => 128
      t.string   :token,              :limit => 128
      t.datetime :token_expires_at
      t.boolean  :email_confirmed, :default => true, :null => false
    end

    add_index :users, [:id, :token]
    add_index :users, :email
    add_index :users, :token

    User.create(:email => "danigb@gmail.com", :password => "dani", :email_confirmed => true)
    User.create(:email => "dani.berzas@gmail.com", :password => "dani", :email_confirmed => true)
  end
  
  def self.down
    drop_table :users  
  end
end
