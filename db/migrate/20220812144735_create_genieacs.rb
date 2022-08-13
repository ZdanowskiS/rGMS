class CreateGenieacs < ActiveRecord::Migration[7.0]
  def change
    create_table :genieacs do |t|
      t.string :name
      t.string :url
      t.string :passwd

      t.timestamps
    end
  end
end
