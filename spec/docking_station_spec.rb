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

  describe '#dock' do
      # dock_1 = DockingStation.new
      # 20.times {dock_1.dock Bike.new}
      # it do expect {dock_1.dock Bike.new}.to raise_error 'Docking station full' end
      it do
        20.times {subject.dock(Bike.new)}
        expect{subject.dock(Bike.new)}.to raise_error 'Docking station full'
      end
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
  end


    # expect(subject.release_bike.working?).to be true

  #   it 'releases working bikes' do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end


end
