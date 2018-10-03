require './DockingStation.rb'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  it { expect(subject.release_bike).to be_an_instance_of(Bike) }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }
end

#  it { expect(subject.dock(Bike.new)).to eq("Bike has been docked") }
