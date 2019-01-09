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

  it "docks something" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  describe ' #release_bike' do

    it "returns docked bikes" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  # it "no infinite bikes" do
  #   expect { raise subject.release_bike }.to raise_error
  # end

end
# gets a bike
# subject == dockingstation in this example as good practice within ruby. Dockingstation is a class and subject makes an instance
