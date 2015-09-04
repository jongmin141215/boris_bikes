require_relative 'bike'
require_relative 'docking_station'

class Van 

  def initialize
    @broken_bikes = []
  end

  def take_broken_bikes
    broken_bikes = bikes.select { |bike| bike.working? == false }
    @broken_bikes << broken_bikes

  end
end
