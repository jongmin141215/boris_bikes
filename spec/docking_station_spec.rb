require 'docking_station'
require 'bike'

describe DockingStation do
  # it 'responds to the release_bike method' do
  #   expect(subject).to respond_to(:release_bike)
  # end
  it { is_expected.to respond_to(:release_bike) }
  #it { expect(subject.release_bike).to be_working }
  it 'releases a working bike' do
      subject.dock Bike.new
      my_bike = subject.release_bike
      expect(my_bike).to be_working
  end


  it { is_expected.to respond_to(:dock).with(1).argument }
  it 'raises an error when there are no bikes available' do
    expect{subject.release_bike}.to raise_error 'No bikes available'
  end


    # expect(subject.release_bike.working?).to be true

  #   it 'releases working bikes' do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end


end
