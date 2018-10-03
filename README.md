This project is to design the "Boris Bike" system from scratch, to build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream a reality.

The purpose of this is to develop skills in both TDD and coding.


require './DockingStation'
require './Bike.rb'
dockingstation = DockingStation.new
bike = dockingstation.release_bike
dockingstation.dock(bike)
dockingstation.bike
