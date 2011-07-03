class CreateOffers < ActiveRecord::Migration
  def self.up
    create_table :offers do |t|
      t.string :user
      t.string :title
      t.string :description
      t.string :catagory
      t.float :price

      t.timestamps
    end
  end

  def self.down
    drop_table :offers
  end
end
