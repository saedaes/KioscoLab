class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
