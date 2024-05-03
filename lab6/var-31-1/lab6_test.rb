# frozen_string_literal: true

require_relative './lab6_main'
require 'minitest/autorun'

class Testprogramm < Minitest::Test
  def test_PartOne
    assert_in_delta 1.0 / 18, PartOne.counter_riad(0.01)[0], 0.01
    assert_in_delta 1.0 / 18, PartOne.counter_riad(0.001)[0], 0.001
    assert_equal true, PartOne.counter_riad(0.01)[1] < PartOne.counter_riad(0.001)[1]
  end

  def test_PartTwo
    assert_in_delta 1.0 / 18, PartTwo.metod_enumerator(0.01)[0], 0.01
    assert_in_delta 1.0 / 18, PartTwo.metod_enumerator(0.001)[0], 0.001
    assert_equal true, PartTwo.metod_enumerator(0.01)[1] < PartTwo.metod_enumerator(0.001)[1]
    assert_equal PartTwo.metod_enumerator(0.01)[0], PartOne.counter_riad(0.01)[0]
    assert_equal PartTwo.metod_enumerator(0.001)[0], PartOne.counter_riad(0.001)[0]
  end

  def test_PartTree
    assert_in_delta 0.8851, PartTree.differ(0.49, 0.1, ->(x_v) { Math.sin(x_v) }) [0], 0.001
    assert_in_delta 0.8295, PartTree.differ(0.49, 0.1, ->(x_v) { Math.sin(x_v) }) [1], 0.001
    assert_in_delta 0.7739, PartTree.differ(0.49, 0.1, ->(x_v) { Math.sin(x_v) }) [2], 0.001
    assert_in_delta -1184.841, PartTree.differ(0.49, 0.1) { |x_v| Math.tan(x_v + 1) } [0], 0.001
    assert_in_delta -103.4954, PartTree.differ(0.49, 0.1) { |x_v| Math.tan(x_v + 1) } [1], 0.001
    assert_in_delta 977.8502, PartTree.differ(0.49, 0.1) { |x_v| Math.tan(x_v + 1) } [2], 0.001
  end
end
