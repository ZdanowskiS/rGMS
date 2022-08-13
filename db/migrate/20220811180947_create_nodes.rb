class CreateNodes < ActiveRecord::Migration[7.0]
  def change
    create_table :nodes do |t|
      t.string :extid
      t.string :name
      t.string :serial
      t.string :deviceid
      t.string :address
      t.integer :customer_id
      t.integer :model_id
      t.integer :genieac_id

      t.timestamps
    end
  end
end
