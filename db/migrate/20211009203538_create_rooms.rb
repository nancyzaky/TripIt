class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :price
      t.string :description
      t.integer :hotel_id
      t.timestamps
    end
  end
end
