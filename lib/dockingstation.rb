require_relative 'bike'

class DockingStation


  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
   fail 'Docking station full' if full?
   @bikes << bike
   end

  def full?
   @bikes.count >= 20 
  end

  def empty?
    @bikes.count == 0
  end

end


# docking_station = DockingStation.new
#
# bike = docking_station.release_bike

# working = docking_station.working_bike
