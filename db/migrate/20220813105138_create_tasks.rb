class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :defval
      t.string :description
      t.integer :dataName
      t.integer :dataType
      t.string :objectName
      t.integer :command_id

      t.timestamps
    end
  end
end
