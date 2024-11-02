require 'minitest/autorun'
require './lib/wobbly'

class WobblyTest < Minitest::Test
  DELTA = 1.0 # 1 second tolerance for time differences

  def test_seconds
    assert_in_delta Wobbly.in('0s'), Time.now, DELTA
  end

  def test_minutes
    assert_in_delta Wobbly.in('30m'), Time.now + (30 * 60), DELTA
  end

  def test_hours
    assert_in_delta Wobbly.in('3h'), Time.now + (3 * 60 * 60), DELTA
  end

  def test_days
    assert_in_delta Wobbly.in('1D'), Time.now + (1 * 24 * 60 * 60), DELTA
  end

  def test_weeks
    assert_in_delta Wobbly.in('2W'), Time.now + (2 * 7 * 24 * 60 * 60), DELTA
  end

  def test_months
    assert_in_delta Wobbly.in('1M'), Time.now + (1 * 30 * 24 * 60 * 60), DELTA
  end

  def test_years
    assert_in_delta Wobbly.in('3Y'), Time.now + (3 * 365 * 24 * 60 * 60), DELTA
  end
end
