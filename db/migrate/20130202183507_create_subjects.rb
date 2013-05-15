class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :nombre
      t.integer :idClasificacion

      t.timestamps
    end
  end
end
