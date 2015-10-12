
describe Van do
  let(:bike) { double :bike }

  describe '#load' do
    it 'loads bikes' do
      expect(subject.load bike).to eq([bike])
    end

    it 'cannot load more than 20 bikes' do
      subject.capacity.times { subject.load bike }
      expect { subject.load bike }.to raise_error ('Van full')
    end
  end

  describe '#unload' do
    it 'unloads bikes' do
      subject.load(bike)
      expect(subject.unload_bikes).to eq([bike])
    end

    it 'unloads multiple bikes' do
      3.times { subject.load(bike) }
      expect(subject.unload_bikes).to eq([bike, bike, bike])
    end

    it 'raises an error when there is no bike to unload' do
      expect { subject.unload_bikes }.to raise_error ('Van empty')
    end
  end

  it_behaves_like BikeContainer
end
