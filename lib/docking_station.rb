require_relative "bike"

class DockingStation

attr_reader :bike

  def bike
    @bike
  end


  def release_bike
    bike = Bike.new
  end
end


station = DockingStation.new
bike = station.release_bike


bike.working?