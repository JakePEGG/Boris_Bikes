#A Domain Model is an abstract representation of the Objects within a system
class DockingStation
  attr_reader :bike
  def release_bike
    Bike.new
  end

  def dock (bike)
    @bike = bike
  end

  # def bike
  #   @bike
  # end
end

# docking_station = DockingStation.new
#
# bike = docking_station.release_bike

# working = docking_station.working_bike
