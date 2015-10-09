class DockingStation
  include BikeContainer

  def release_bike(bike)
    fail 'DockingStation empty' if working_bikes.empty?
    remove_bike(bike)
  end

  def dock(bike)
    add_bike bike
  end

  private

  def working_bikes
    bikes.select { |bike| bike.working? }
  end
end
