#A Domain Model is an abstract representation of the Objects within a system
class DockingStation

  attr_reader :bike

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
    #docking station is empty
    # if @bike == nil
    #   fail
    # else
    #   Bike.new
    # end
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
