# require_relative 'bike_container'
class Van
  include BikeContainer

  def load bike
    add_bike(bike)
  end

  def unload_bikes
    fail 'Van empty' if empty?
    unloaded_bikes = []
    bikes.each do |bike|
      unloaded_bikes << bike
    end
    bikes.clear
    unloaded_bikes
  end
end
