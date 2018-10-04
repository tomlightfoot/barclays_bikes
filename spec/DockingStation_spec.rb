require './DockingStation.rb'

describe DockingStation do

  describe '#release_bike' do
    it 'release a bike' do
      expect { subject.release_bike }.to raise_error 'No bikes available.'
    end
  end

  describe '#dock(bike)' do
    before(:each) do
      @bike = Bike.new
      subject.dock(@bike)
    end
    it 'should raise an error when trying to dock' do
      expect { subject.dock(Bike.new) }.to raise_error 'Docking station at full capacity.'
    end
  end

  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }

end

#  it { expect(subject.release_bike).to be_an_instance_of(Bike) }
# it 'to check that method bike has our bike there' do
#  bike1 = Bike.new
#  subject.dock(bike1)
#  expect(subject.bike).to eq bike1
# end
