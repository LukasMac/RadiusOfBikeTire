class RadiusOfBikeTire
  def get_radius_from_length(length)
    raise ArgumentError unless length >= 0
    length / (2 * Math::PI)
  end
end