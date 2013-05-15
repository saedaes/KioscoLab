class CreatePuestos < ActiveRecord::Migration
  def change
    create_table :puestos do |t|
      t.integer :idPuesto
      t.string :Nombre
      t.string :Descripcion

      t.timestamps
    end
  end
end
