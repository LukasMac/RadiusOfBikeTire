require '../RadiusOfBikeTire/radius_of_bike_tire'
require 'test/unit'

class TestRadiusOfBikeTire < Test::Unit::TestCase
  def test_get_radius_from_length_zeroLength_returnsZero
    result = RadiusOfBikeTire.new.get_radius_from_length(0)

    assert_equal result, 0
  end

  def test_get_radius_from_length_lengthOne_returns0159
    result = RadiusOfBikeTire.new.get_radius_from_length(1)

    assert_equal result.round(3), 0.159
  end

  def test_get_radius_from_length_negativeLength_risesArgumentError
    assert_raise ArgumentError do
      RadiusOfBikeTire.new.get_radius_from_length(-1)
    end
  end
end