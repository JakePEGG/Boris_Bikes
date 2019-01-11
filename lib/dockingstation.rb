require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20

attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY) 
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
   fail 'Docking station full' if full?
   @bikes << bike
   end


  private
  def full?
   @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.count == 0
  end

end


# docking_station = DockingStation.new
#
# bike = docking_station.release_bike

# working = docking_station.working_bike
