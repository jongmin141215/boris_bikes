describe DockingStation do

  let(:bike) { double :bike, working?: true, broken?: false }

  describe '#release_bike(bike)' do
    it { is_expected.to respond_to(:release_bike) }

    it 'releases a working bike' do
        subject.dock bike
        expect(bike).to be_working
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike bike }.to raise_error 'DockingStation empty'
    end

    it 'raises an error when there are no working bikes' do
      bike = double :bike, broken?: true, working?: false 
      subject.dock bike
      expect{ subject.release_bike bike }.to raise_error 'DockingStation empty'
    end
  end

  describe '#dock' do

    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'cannot dock a bike when docking station if full' do
      subject.capacity.times { subject.dock bike }
      expect { subject.dock bike }.to raise_error 'DockingStation full'
    end

    it 'does not accept things other than bikes' do
      expect { subject.dock 'hi' }.to raise_error('Can only accept bikes')
    end
  end

  it 'has a default capacity' do
    capacity = 20
    expect(subject.capacity).to eq capacity
  end

  it 'can change capacity' do
    subject.capacity = 25
    expect(subject.capacity).to eq 25
  end

  it_behaves_like BikeContainer
end
