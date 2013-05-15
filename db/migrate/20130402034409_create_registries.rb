class CreateRegistries < ActiveRecord::Migration
  def change
    create_table :registries do |t|
      t.time :hora_login
      t.time :hora_logout
      t.integer :user_number
      t.integer :actividad_id

      t.timestamps
    end
  end
end
