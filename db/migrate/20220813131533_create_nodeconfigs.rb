class CreateNodeconfigs < ActiveRecord::Migration[7.0]
  def change
    create_table :nodeconfigs do |t|
      t.string :name
      t.integer :node_id
      t.string :val

      t.timestamps
    end
  end
end
