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

  it 'raises an error when there are no working bikes' do
    bike = Bike.new
    bike.report_broken
    subject.dock(bike)
    expect{subject.release_bike}.to raise_error 'No bikes available'
  end

  describe '#dock' do
      # dock_1 = DockingStation.new
      # 20.times {dock_1.dock Bike.new}
      # it do expect {dock_1.dock Bike.new}.to raise_error 'Docking station full' end
      it do
        subject.capacity.times {subject.dock(Bike.new)}
        expect{subject.dock(Bike.new)}.to raise_error 'Docking station full'
      end
  end

  it 'has a default capacity' do
    capacity = 20
    expect(subject.capacity).to eq capacity
  end

  it 'can change capacity' do
    expect(subject.capacity = subject.capacity+1).to eq(subject.capacity)
  end


    # expect(subject.release_bike.working?).to be true

  #   it 'releases working bikes' do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end


end
