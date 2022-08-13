class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :extid
      t.string :lastname
      t.string :name
      t.string :address
      t.string :phone
      t.string :ten
      t.string :ssn
      t.text :note

      t.timestamps
    end
  end
end
