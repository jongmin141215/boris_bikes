require 'docking_station'

describe DockingStation do
  # it 'responds to the release_bike method' do
  #   expect(subject).to respond_to(:release_bike)
  # end
  it { is_expected.to respond_to(:release_bike) }

  it 'returns a bike' do
    expect(subject.release_bike).to be_an_instance_of Bike 
  end

end
