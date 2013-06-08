require 'test/unit'
require_relative '../src/radius_of_bike_tire'

class TestRadiusOfBikeTire < Test::Unit::TestCase
  def radius_of_bike_tire
    RadiusOfBikeTire.new
  end

  def test_get_radius_from_length_zeroLength_returnsZero
    result = radius_of_bike_tire.get_radius_from_length(0)

    assert_equal result, 0
  end

  def test_get_radius_from_length_lengthOne_returns0159
    result = radius_of_bike_tire.get_radius_from_length(1)

    assert_in_delta(0.159, result, 3)
  end

  def test_get_radius_from_length_negativeLength_risesArgumentError
    assert_raise ArgumentError do
      radius_of_bike_tire.get_radius_from_length(-1)
    end
  end
end