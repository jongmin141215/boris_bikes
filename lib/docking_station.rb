require_relative 'bike'
require_relative 'van'

class DockingStation
  attr_accessor :capacity


  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    working_bikes = bikes.select { |bike| bike.working? }
    fail 'No bikes available' if working_bikes.empty?
    my_bike = working_bikes.pop
    bikes.delete(my_bike)
  end

  def dock(bike)
  	fail 'Docking station full' if full?
  	bikes << bike
  end

  private

  attr_reader :bikes

  def full?
    bikes.count >= @capacity
  end

  def empty?
    bikes == []
  end
end
