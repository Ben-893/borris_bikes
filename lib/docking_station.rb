require_relative "bike"

class DockingStation
  def initialize
    @docked_bike = Bike.new
  end


  attr_reader :docked_bike



  def dock(docking_bike)
    @docked_bike = docking_bike
  end


def release_bike
  if @docked_bike.empty?
  raise("no_bike") 
else
  @docked_bike = ""
  bike = Bike.new
    end
  end
end
