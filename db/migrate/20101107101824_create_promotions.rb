class CreatePromotions < ActiveRecord::Migration
  def self.up
    create_table :promotions do |t|
      t.integer :user_id
      t.string :description
      t.date :debut
      t.date :fin
      t.timestamps
    end
  end

  def self.down
    drop_table :promotions
  end
end
