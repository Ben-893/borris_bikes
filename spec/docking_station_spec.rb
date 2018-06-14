require "docking_station"


describe DockingStation do
it "docks something" do
  bike1 = Bike.new
  subject.release_bike
    expect(subject.dock(bike1)).to eq bike1
  end


it "returns docked bikes" do
  bike = Bike.new
  subject.release_bike
    subject.dock(bike)
      expect(subject.docked_bike).to eq bike
    end

it "releases working bike" do
  bike = subject.release_bike
   expect(bike).to be_working
  end

it "raise error if no bikes are docked" do
  expect { subject.release_bike; subject.release_bike }.to raise_error("no_bike")
end

it "prevents a person from docking a bike if there isn't room." do
  expect { subject.dock(Bike.new) }.to raise_error("no room for bike")
  end


it { is_expected.to respond_to :release_bike }
it { is_expected.to respond_to(:dock).with(1).argument }
it { is_expected.to respond_to(:docked_bike) }

end