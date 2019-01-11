# docking_station_speck.rb
require "dockingstation.rb"
# require "./lib/feature_test.rb"
# require_relative "../lib/feature_test.rb"

describe DockingStation do

  it { is_expected.to respond_to :release_bike }
  # * a method within a class becomes and object hence "respond_to" checks for the object (:release_bike)
  it "Gets a bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to (be_an_instance_of(Bike))
  end

  it "bike is working" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike.working?). to be true
  end

  describe ' #release_bike' do

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

  end

  describe '#dock' do
    it 'raises an error when full' do
      DockingStation::DEFAULT_CAPACITY.times{subject.dock(Bike.new)}
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end

 end

  # it "no infinite bikes" do
  #   expect { raise subject.release_bike }.to raise_error
  # end
# gets a bike
# subject == dockingstation in this example as good practice within ruby. Dockingstation is a class and subject makes an instance
