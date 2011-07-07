class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.column :login, :string
      t.column :hashed_password, :string
      t.column :email, :string
      t.column :salt, :string
      t.column :created_at, :datetime
      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
