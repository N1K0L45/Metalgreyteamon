class CreateMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :materials do |t|
      t.references :ordencompra, foreign_key: true
      t.string :material
      t.integer :cantidad

      t.timestamps
    end
  end
end
