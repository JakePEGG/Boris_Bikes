# docking_station_speck.rb
require "feature_test.rb"
# require "./lib/feature_test.rb"
# require_relative "../lib/feature_test.rb"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  # * a method within a class becomes and object hence "respond_to" checks for the object (:release_bike)
end
