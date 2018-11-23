class CreateUsers < ActiveRecord::Migration[5.2]
  def self.up
    create_table :users do |t|
      t.string :uuid,               limit: 36, null: false
      t.string :email,              null: false, default: ""
      t.string :username,           null: false, default: ""
      t.string :password_digest,    null: false, default: ""
      t.boolean :admin,             default: false

      t.timestamps
    end
    add_index :users, :uuid,        unique: true
    add_index :users, :email,       unique: true
    add_index :users, :username,    unique: true
  end
  def self.down
    drop_table :users
  end
end
