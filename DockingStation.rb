require './Bike'

class DockingStation

  def initialize
    @bikes = 0
  end

  def release_bike
    fail 'No bikes available.' if empty?
    @bikes -= 1
  end

  def dock(bike)
    fail 'Docking station at full capacity.' if full?
    @bikes += 1
  end

  attr_reader :bike

  private

  def full?
    @bikes == 20
  end

  def empty?
    @bikes == 0
  end

end
