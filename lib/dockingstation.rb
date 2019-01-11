require_relative 'bike'

class DockingStation


  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.count == 0
    @bikes.pop
  end

  def dock(bike)
   fail 'Docking station full' if @bikes.count >= 20
   @bikes << bike
 end
end


# docking_station = DockingStation.new
#
# bike = docking_station.release_bike

# working = docking_station.working_bike
