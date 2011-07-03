class CreateWants < ActiveRecord::Migration
  def self.up
    create_table :wants do |t|
      t.string :user
      t.string :title
      t.string :description
      t.string :catagory
      t.float :price

      t.timestamps
    end
  end

  def self.down
    drop_table :wants
  end
end
