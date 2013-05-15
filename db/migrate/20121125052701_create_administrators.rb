class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.integer :numEmpleado
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.integer :idPuesto

      t.timestamps
    end
  end
end
