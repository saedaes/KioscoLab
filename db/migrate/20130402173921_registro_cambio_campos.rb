class RegistroCambioCampos < ActiveRecord::Migration
  def up
    remove_column :registries, :hora_login
    remove_column :registries, :hora_logout
  end

  def down
  end
end
