class Weather < ActiveRecord::Base
  attr_accessible :atmospheric_pressure, :global_radiation, :humity, :precipitation, :temperature, :weather_date, :wind_direction, :wind_speed

end
