class DockingStation
  def release_bike
    # Bike.new
    fail 'No bikes available' if @bike == nil
    @bike
  end

  def dock(bike)
    @counter ||= 0
  	fail 'Docking station full' if @counter == 20
  	@bike = bike
    @counter += 1
  end
end
