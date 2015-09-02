require 'docking_station'
require 'bike'

describe DockingStation do
  # it 'responds to the release_bike method' do
  #   expect(subject).to respond_to(:release_bike)
  # end
  it { is_expected.to respond_to(:release_bike) }
  it { expect(subject.release_bike).to  be_working }
  it { is_expected.to respond_to(:dock)}

    # expect(subject.release_bike.working?).to be true

  #   it 'releases working bikes' do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end


end
