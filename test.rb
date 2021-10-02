# frozen_string_literal: true

require 'minitest/autorun'
require './main'

# Tests intg function
class TestIntegral < Minitest::Test
  def test_function1
    assert_in_delta(0.846139, intg(0.1, 1, 2000) { |x| Math.sin(x) / x })
  end

  def test_function2
    assert_in_delta(-0.376871, intg(1, 2, 2000) { |x| Math.tan(x + 1) / (x + 1) })
  end

  def test_lambda
    assert_in_delta(-0.376871, intg(1, 2, 2000, ->(x) do Math.tan(x + 1) / (x + 1) end))
  end
end
