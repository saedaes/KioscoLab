class ChangeConsultation < ActiveRecord::Migration
  def up
    add_column :consultations, :nombre_publicacion , :string
  end

  def down
  end
end
