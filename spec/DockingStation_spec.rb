require './DockingStation.rb'

describe DockingStation do
  describe '#release_bike' do
    it 'release a bike' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }
  it 'to check that method bike has our bike there' do
    bike1 = Bike.new
    subject.dock(bike1)
    expect(subject.bike).to eq bike1
  end

end

#  it { expect(subject.release_bike).to be_an_instance_of(Bike) }
