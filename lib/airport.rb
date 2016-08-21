require_relative 'plane'
require_relative 'weather'

class Airport

attr_reader :planes

  def initialize
    @planes = []
  end

  def land(plane)
    @planes << plane
  end

  def takeoff(plane)
    fail 'It is too stormy to take off' if Weather.stormy?
    planes.delete(plane)
  end
end
