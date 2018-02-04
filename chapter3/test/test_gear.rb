# coding: utf-8
require 'minitest/autorun'
require_relative '../lib/gear'

# GearTest is for to test Gear class
class GearTest < Minitest::Test
  def test_one
    # assert_equal 4.7272727272727275, Gear.new(52, 11).ratio
    # assert_equal 1.1111111111111111, Gear.new(30, 27).ratio
    # assert_raises { Gear.new(52, 11).ratio }
    assert_raises { Gear.new(52, 11, nil, nil).ratio }
    assert_equal 4.7272727272727275, Gear.new(52, 11).ratio
    @wheel = Wheel.new(26, 1.5)
    assert_equal 91.106186954104, @wheel.circumference
    assert_equal 137.0909090909091, Gear.new(52, 11, @wheel).gear_inches
  end
end
