class CreateVenta < ActiveRecord::Migration[7.0]
  def change
    create_table :venta do |t|
      t.datetime :fecha
      t.string :crypto
      t.integer :cantidad

      t.timestamps
    end
  end
end
