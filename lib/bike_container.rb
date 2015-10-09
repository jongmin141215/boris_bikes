module BikeContainer
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def add_bike(bike)
    fail "#{self.class} full" if full?
    bikes << bike
  end

  def remove_bike(bike)
    fail "#{self.class} empty" if empty?
    bikes.delete(bike)
  end

  def empty?
    bikes.length == 0
  end

  def full?
    bikes.length >= capacity
  end
  private

  attr_reader :bikes
end
