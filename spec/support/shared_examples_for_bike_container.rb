require 'bike_container'

shared_examples_for BikeContainer do
  let(:bike) {double :bike}

  it 'has a default capacity when initialized' do
    capacity = 20
    expect(subject.capacity).to eq capacity
  end

  it 'can collect bike' do
    expect(subject.collect bike).to eq([bike])
  end

  it "can't collect bike if full" do
    subject.capacity.times { subject.collect bike }
    expect{ subject.collect bike }.to raise_error("#{described_class.name} full")
  end

  it 'can release bike' do
    subject.collect bike
    expect(subject.remove_bike).to eq bike
  end

  it "can't release bike if empty" do
    expect{subject.remove_bike}.to raise_error ("#{described_class.name} has no bikes")
  end

end
