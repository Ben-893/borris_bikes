require_relative "bike"

class DockingStation
  def release_bike
    Bike.new
  end
end


station = DockingStation.new
bike = station.release_bike


bike.working?