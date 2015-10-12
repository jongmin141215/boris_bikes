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
    if bike.respond_to?(:broken?)
      add_bike bike
    else
      raise 'Can only accept bikes'
    end
  end

  private

  def working_bikes
    bikes.select { |bike| bike.working? }
  end
end
