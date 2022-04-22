require "test_helper"

class AngryPurpleTigerTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::AngryPurpleTiger::VERSION
  end

  def test_ugly_input_string
    # rapid = 145
    # grey = 174
    # rattleshack = 163
    assert_equal 'rapid grey rattlesnake', AngryPurpleTiger.new('my ugly input string')
  end
end
