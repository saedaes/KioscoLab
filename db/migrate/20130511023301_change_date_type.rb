class ChangeDateType < ActiveRecord::Migration
  def up
    change_column :weathers, :weather_date, :string
  end

  def down
  end
end
