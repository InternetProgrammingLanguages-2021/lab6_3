# frozen_string_literal: true

# class containing utils for integral calculation
class IntegralUtil
  def self.dx(min_x, max_x, iteration_quantity)
    min_x = min_x.to_f
    max_x = max_x.to_f
    range = max_x - min_x
    range.to_f / iteration_quantity
  end

  def self.intg(min_x, max_x, iteration_quantity = 1000, &func)
    dx = dx(min_x, max_x, iteration_quantity)
    dx * (min_x.to_f...max_x.to_f).step(dx).reduce do |acc, value|
      acc + func.call(value)
    end
  end
end
