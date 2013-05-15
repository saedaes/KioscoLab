class CreateConsultations < ActiveRecord::Migration
  def change
    create_table :consultations do |t|
      t.date :fecha_consulta
      t.integer :matricula
      t.integer :id_publicacion

      t.timestamps
    end
  end
end
