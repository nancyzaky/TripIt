class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.integer :attraction_id
      t.string :date

      t.timestamps
    end
  end
end
