require_relative 'bike_container'
class DockingStation
  include BikeContainer

  def release_bike(bike)
    fail 'DockingStation empty' if working_bikes.empty?
    if working_bikes.include? bike
      bikes.delete(bike)
    else
      return 'No working bikes available'
    end
  end

  def dock(bike)
    add_bike bike
  end

  private

  def working_bikes
    bikes.select { |bike| bike.working? }
  end
end
