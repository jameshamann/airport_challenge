require_relative 'plane'
require_relative 'weather'

class Airport

  attr_accessor :capacity

  DEFAULT_CAPACITY = 50

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @planes = []
  end

  def land(plane)
    fail 'Airport full' if full?
    @planes << plane
  end

  def takeoff(plane)
    fail 'It is too stormy to take off' if Weather.stormy?
    planes.delete(plane)
  end

private

  def full?
    return true if @planes.count >= @capacity
  end
end
