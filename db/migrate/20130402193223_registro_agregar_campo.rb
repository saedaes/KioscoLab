class RegistroAgregarCampo < ActiveRecord::Migration
  def up
    add_column :registries, :publicacion, :string
  end

  def down
  end
end
