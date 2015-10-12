class Garage
  include BikeContainer

  def accept bike
    add_bike bike
  end

  def fix_bikes bike
    bike.fix
  end

  def release_bike
    released_bikes = []
    bikes.each { |bike| released_bikes << bike }
    released_bikes
  end
end
