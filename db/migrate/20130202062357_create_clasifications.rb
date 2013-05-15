class CreateClasifications < ActiveRecord::Migration
  def change
    create_table :clasifications do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
