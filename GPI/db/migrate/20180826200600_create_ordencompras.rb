class CreateOrdencompras < ActiveRecord::Migration[5.1]
  def change
    create_table :ordencompras do |t|
      t.string :comprador

      t.timestamps
    end
  end
end
