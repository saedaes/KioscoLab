class CreateEspecialNews < ActiveRecord::Migration
  def change
    create_table :especial_news do |t|
      t.integer :publicacion_id

      t.timestamps
    end
  end
end
