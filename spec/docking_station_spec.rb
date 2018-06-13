require "docking_station"


describe DockingStation do
  it "docks something" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike


  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }
  it "releases working bike" do
    bike = subject.release_bike
   expect(bike).to be_working
    end
  end
end



