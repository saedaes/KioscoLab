class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.date :weather_date
      t.float :wind_direction
      t.float :wind_speed
      t.float :global_radiation
      t.float :temperature
      t.float :humity
      t.float :atmospheric_pressure
      t.float :precipitation

      t.timestamps
    end
  end
end
