module BikeContainer
  attr_accessor :capacity

  def initialize(capacity = 20)
    @capacity = capacity
    @bikes = []
  end

  def collect(bike)
    fail "#{self.class.name} full" if @bikes.count >= capacity
    @bikes << bike
  end
end
