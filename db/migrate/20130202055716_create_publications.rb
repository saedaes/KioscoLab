class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :titulo
      t.string :contenido
      t.string :imagen
      t.integer :clasificacion
      t.integer :numEmpleado

      t.timestamps
    end
  end
end
