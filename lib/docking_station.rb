class DockingStation
  attr_accessor :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    # Bike.new
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
  	fail 'Docking station full' if full?
  	@bikes << bike
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
