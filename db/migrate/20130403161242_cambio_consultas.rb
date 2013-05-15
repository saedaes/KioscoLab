class CambioConsultas < ActiveRecord::Migration
  def up
    change_column :consultations, :matricula, :string
  end

  def down
  end
end
