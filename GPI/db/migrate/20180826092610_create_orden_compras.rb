class CreateOrdenCompras < ActiveRecord::Migration[5.1]
  def change
    create_table :orden_compras do |t|
      t.string :comprador
      t.string :material
      t.integer :cantidad

      t.timestamps
    end
  end
end
