require_relative "bike"

class DockingStation
  def initialize
    @docked_bike = Bike.new
  end


  attr_reader :docked_bike



def dock(docking_bike)
  if @docked_bike 
    raise("Docking station full")
  else
    @docked_bike = docking_bike
  end
end


def release_bike
  if @docked_bike
  @docked_bike = nil
  bike = Bike.new
else
  raise("No bike") 
    end
  end
end
