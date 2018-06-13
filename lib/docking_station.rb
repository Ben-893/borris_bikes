require_relative "bike"

class DockingStation

  def bike

  end


  def release_bike
    Bike.new
  end

  def dock(bike)
  bike
  end
end


station = DockingStation.new
bike = station.release_bike


bike.working?