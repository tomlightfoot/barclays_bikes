require './Bike.rb'

describe Bike do
  it { is_expected.to respond_to(:working?) }
  it { expect(subject.working?).to eq true}
end
