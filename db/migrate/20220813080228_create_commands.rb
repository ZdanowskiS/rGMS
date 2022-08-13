class CreateCommands < ActiveRecord::Migration[7.0]
  def change
    create_table :commands do |t|
      t.string :name
      t.text :description
      t.integer :modelid

      t.timestamps
    end
  end
end
