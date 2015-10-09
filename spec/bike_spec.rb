require 'bike'

describe Bike do
	it 'respond to the working? method with true or false' do
		expect(subject).to respond_to(:working?)
	end

	it 'can be reported broken' do
		subject.report_broken
		expect(subject.working?).to eq(false)
	end

	it "reports bike as broken if it's been reported broken" do
		subject.report_broken
		expect(subject.broken?).to eq(true)
	end
end
