describe Garage do

  let(:bike) { double :bike, working?: false }

  describe '#accept bike' do
    it 'accepts bikes' do
      expect(subject.accept bike).to eq([bike])
    end

    it 'cannot accept more than 20 bikes' do
      subject.capacity.times { subject.accept bike }
      expect { subject.accept bike }.to raise_error('Garage full')
    end
  end

  it 'fixes broken bikes' do
    subject.accept bike
    expect(bike).to receive(:fix)
    subject.fix_bikes bike
  end

  describe '#release_bike' do
    it 'releases bikes' do
      subject.accept bike
      subject.accept bike
      expect(subject.release_bike).to eq([bike, bike])
    end
  end



  it_behaves_like BikeContainer
end
