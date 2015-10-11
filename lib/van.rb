# require_relative 'bike_container'
class Van
  include BikeContainer
  attr_reader :broken_bikes

  #
  # def take_broken_bikes
  #   broken_bikes = bikes.select { |bike| bike.working? == false }
  #   @broken_bikes << broken_bikes
  #
  # end
  def load bike
    bike.broken? ? add_bike(bike) : bikes
  end
end
