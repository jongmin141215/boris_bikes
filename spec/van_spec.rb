
describe Van do
  let(:bike) { double :bike, broken?: true }
  # let(:docking_station) { double :docking_station}
  describe '#load' do
    it 'loads broken bikes' do
      subject.load bike
      expect(bike).to be_broken
    end

    it 'does not load working bikes' do
      bike = double :bike, broken?: false
      expect(subject.load bike).to be_empty
    end

    it 'cannot load more than 20 bikes' do
      subject.capacity.times { subject.load bike }
      expect { subject.load bike }.to raise_error ('Van full')
    end
  end
  




  it_behaves_like BikeContainer
end
