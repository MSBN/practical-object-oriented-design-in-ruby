# coding: utf-8
require 'minitest/autorun'
require_relative '../lib/gear'

# GearTest is for to test Gear class
class GearTest < Minitest::Test
  def test_one
    assert_equal 137.0909090909091, Gear.new(chainring: 52, cog: 11, wheel: Wheel.new(26, 1.5)).gear_inches
  end
end
