# frozen_string_literal: true

require 'minitest/autorun'
require './main'

# Tests intg function
class TestIntegral < Minitest::Test
  def test_function_alpha
    assert_in_delta(0.846139, IntegralUtil.intg(0.1, 1, 2000) { |argument| Math.sin(argument) / argument })
  end

  def test_function2_beta
    assert_in_delta(-0.376871, IntegralUtil.intg(1, 2, 2000) { |argument| Math.tan(argument + 1) / (1 + argument) })
  end

  def test_lambda
    assert_in_delta(-0.376871, IntegralUtil.intg(1, 2, 2000, &lambda do |argument|
      Math.tan(argument + 1) / (1 + argument)
    end))
  end
end
