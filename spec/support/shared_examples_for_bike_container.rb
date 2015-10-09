shared_examples_for BikeContainer do

  let(:bike) { double :bike }

  it 'has a default capacity when initialized' do
    expect(subject.capacity).to eq BikeContainer::DEFAULT_CAPACITY
  end

  describe 'capacity' do
    it 'can be overriden on initialize' do
      random_capacity = Random.rand(100)
      subject = described_class.new random_capacity
      expect(subject.capacity).to eq random_capacity
    end
  end

  it 'has no bikes when initialized' do
    expect(subject).to be_empty
  end

  describe 'add_bike' do
    it 'receives a bike' do
      subject.add_bike bike
      expect(subject).not_to be_empty
    end

    it 'raises an error when full' do
      subject.capacity.times { subject.add_bike bike }
      expect { subject.add_bike bike }.to raise_error("#{described_class} full")
    end
  end

  describe 'remove_bike bike' do

    it 'returns a bike' do
      subject.add_bike bike
      expect(subject.remove_bike bike).to eq bike
    end

    it 'removes a bike' do
      subject.add_bike bike
      subject.remove_bike bike
      expect(subject).to be_empty
    end

    it 'raises an error when there is no bike' do
      expect { subject.remove_bike bike }.to raise_error("#{described_class} empty")
    end
  end
end
