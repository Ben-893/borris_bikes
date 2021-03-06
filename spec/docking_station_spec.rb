require "docking_station"


describe DockingStation do
  it "docks something" do
    bike = Bike.new
    expect(subject.dock(bike)).to include bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to include bike
  end


  it "releases working bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it 'raises an error when there are no bikes available' do
    expect {subject.release_bike}.to raise_error "No bikes available"
  end

  it 'raises an error when full' do
    20.times { subject.dock Bike.new }
    expect { subject.dock Bike.new }.to raise_error 'Docking station full'
  end

  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }

end