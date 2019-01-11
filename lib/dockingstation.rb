require_relative './lib/bike.rb'

class DockingStation

  attr_reader :bike

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
   fail 'Docking station full' if @bike
   @bike = bike
 end
end 


# docking_station = DockingStation.new
#
# bike = docking_station.release_bike

# working = docking_station.working_bike
