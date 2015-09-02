require 'docking_station'
require 'bike'

describe DockingStation do
  # it 'responds to the release_bike method' do
  #   expect(subject).to respond_to(:release_bike)
  # end
  it { is_expected.to respond_to(:release_bike) }

  it 'returns a bike that is working' do
  	# expect(subject.release_bike.working?).to be true
  	  expect(subject.release_bike).to  be_working
  end

  #   it 'releases working bikes' do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end


end
