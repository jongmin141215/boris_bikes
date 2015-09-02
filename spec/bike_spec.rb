require 'bike'

describe Bike do
	it 'respond to the working? method with true or false' do
		expect(subject).to respond_to(:working?)
	end
end